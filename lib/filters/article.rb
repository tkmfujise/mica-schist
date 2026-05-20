require 'json'

module Nanoc::Filters
  class Article < Nanoc::Filter
    identifier :article
    requires 'asciidoctor'

    STAT_MAX = {
      maximum_amplitude:  1,
      # mean_amplitude:     1,
      rms_amplitude:      1,
      crest_factor:       20,
      maximum_delta:      1,
      # minimum_delta:      1,
      # mean_delta:         1,
      rms_delta:          1,
      delta_crest_factor: 40,
      jiggly:             1,
      periodicity:        0.8,
      rough_frequency:    18000.0,
    }


    def run(content, params = {})
      content = <<~ADOC
        == #{title}

        [.output]
        audio::output.ogg[]

        .#{filepath}
        ```ruby
        #{content}
        ```
        [.spectrogram]
        image::spectrogram.png[]

        #{stat_html}
      ADOC

      ::Asciidoctor.convert(content, params)
    end


    private
      def filepath
        @item.identifier.to_s
      end

      def dir
        @dir ||= Pathname(@item.raw_filename).dirname
      end

      def name
        @name ||= File.basename(filepath, '.*')
      end

      def title
        name.split('_').map(&:capitalize).join(' ')
      end


      def stat
        @stat ||= begin
          stat = JSON.parse(stat_json, symbolize_names: true)

          stat.merge!(crest_factor: stat[:maximum_amplitude] / stat[:rms_amplitude])
          stat.merge!(delta_crest_factor: stat[:maximum_delta] / stat[:rms_delta])
          stat.merge!(jiggly: stat[:rms_delta] / stat[:rms_amplitude])
          stat.merge!(periodicity: stat[:mean_delta] / stat[:rms_delta])
        end
      end


      def stat_json
        @stat_json ||= begin
          return {} unless dir.join('stat.json').exist?
          dir.join('stat.json').read
        end
      end


      def stat_html
        return '' if stat.empty?
        html = STAT_MAX.map do |k, max|
          next unless stat[k]
          <<~HTML
            <label>
              <progress style="accent-color: #{progress_color(stat[k], max)}"
                max="#{max}" value="#{stat[k]}"></progress>
              : #{k}
            </label><br>
          HTML
        end.compact.join
        <<~TEXT
        ++++
        <div class="stat">
        #{html}
        </div>
        ++++

        ```json
        #{stat_json}
        ```
        TEXT
      end


      def progress_color(value, max)
        case value / max
        in ..0.2    then 'blue'
        in 0.2..0.7 then 'green'
        else             'red'
        end
      end
  end
end
