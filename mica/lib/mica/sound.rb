module Mica
  class Sound
    META_COMMENTS = {
      recording_time: 'max-recording-time',
    }

    attr_accessor(
      :dir,
      :code,
      :output,
      :recording_time,
    )

    def initialize(path)
      self.code = read(path)

      if code =~ /#\s*#{META_COMMENTS[:recording_time]}:\s*([\d\.]+)/
        self.recording_time = $1.to_f
      else
        self.recording_time = Mica.config.recording_time
      end
    end


    def play
      Recorder.perform(
        output:   dir.join('output.wav'),
        duration: recording_time,
      ) do |file|
        self.output = file
        analyzer = Analyzer.new(file)
        analyzer.spectrogram
        analyzer.stat
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
