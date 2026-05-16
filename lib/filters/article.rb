module Nanoc::Filters
  class Article < Nanoc::Filter
    identifier :article
    requires 'asciidoctor'

    # TODO
    # * Creating an spectrogram by FFmpeg
    #   $ sox output.wav -n spectrogram -y 512 -X 100 -o spectrogram.png
    #   $ sox output.wav -n spectrogram -h -o spectrogram.png
    #
    def run(content, params = {})
      content = <<~ADOC
        == #{title}

        [.output]
        audio::output.wav[]

        .#{filepath}
        ```ruby
        #{content}
        ```

        [.spectrogram]
        image::spectrogram.png[]
      ADOC

      ::Asciidoctor.convert(content, asciidoctor_params)
    end


    private
      def asciidoctor_params
        {
          attributes: {
            'source-highlighter' => 'rouge',
            'rouge-css' => 'class',
          }
        }
      end

      def filepath
        @item.identifier.to_s
      end

      def name
        @name ||= File.basename(filepath, '.*')
      end

      def title
        name.capitalize
      end
  end
end
