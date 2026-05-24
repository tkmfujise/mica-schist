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
        output:   dir.join('output.ogg'),
        duration: recording_time,
      ) do |file|
        self.output = file
        analyzer = Analyzer.new(file)
        analyzer.spectrogram
        analyzer.stat
        touch
      end
      Player.current.play(code)
    end


    def touch
      path = dir.children.find{|p| p.to_s.end_with?('.rb') }
      path && FileUtils.touch(path)
    end


    def stat
      file = dir.join('stat.json')
      if file.exist?
        JSON.parse(file.read, symbolize_names: true)
      else
        {}
      end
    end


    private
      def read(path)
        target = Mica.config.contents_dir.join(path)
        self.dir = target.dirname
        File.read(target)
      end
  end
end
