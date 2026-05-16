module Mica
  class Sound
    attr_accessor :dir, :code, :output

    def initialize(path)
      self.code = read(path)
    end


    def play
      Recorder.perform(output: dir.join('output.wav')) do |file|
        self.output = file
        analyzer = Analyzer.new(file)
        analyzer.spectrogram
      end
      Player.current.play(code)
    end


    private
      def read(path)
        target = Mica.config.contents_dir.join(path)
        self.dir = target.dirname
        File.read(target)
      end
  end
end
