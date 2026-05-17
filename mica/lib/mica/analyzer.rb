module Mica
  class Analyzer
    attr_accessor :file, :dir

    def initialize(file)
      self.file  = file
      self.dir   = Pathname(file).dirname
    end


    def spectrogram
      cmd = ['sox', file, '-n', 'spectrogram', '-h', '-o', output_for(:spectrogram)]
      Process.spawn(*cmd)
    end

    def stat
      _o, e, _s = Open3.capture3("sox #{file} -n stat")
      json = JSON.pretty_generate(parse_stat(e))
      File.write(output_for(:stat), json)
    end

    
    private
      def output_for(type)
        file = \
          case type
          when :spectrogram
            'spectrogram.png'
          when :stat
            'stat.json'
          else
            name.to_s
          end

        dir.join(file).to_s
      end

      def parse_stat(text)
        text.each_line.with_object({}) do |line, h|
          if (m = /^\s*(?<key>[^:]+):\s+(?<value>.+)$/.match(line))
            key = m[:key].strip.downcase \
                .gsub(/\s*\(.+\)\s*/, '').gsub(/\s+/, '_').to_sym
            h[key] = m[:value].strip.to_f
          end
        end
      end
  end
end
