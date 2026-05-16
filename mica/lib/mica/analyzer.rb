module Mica
  class Analyzer
    attr_accessor :file, :dir

    def initialize(file)
      self.file = file
      self.dir  = Pathname(file).dirname
    end


    def spectrogram
      cmd = ['sox', file, '-n', 'spectrogram', '-h', '-o', output_for(:spectrogram)]
      Process.spawn(*cmd)
    end

    
    private
      def output_for(type)
        file = \
          case type
          when :spectrogram
            'spectrogram.png'
          else
            name.to_s
          end

        dir.join(file).to_s
      end
  end
end
