module Mica
  class Batch
    include Enumerable

    # Mica::Batch['cc0/**']
    def self.[](keyword)
      Dir[Mica.config.contents_dir.join("#{keyword}/*.rb")].map{|path|
        path = Pathname(path)
        next if path.parent.basename.to_s.start_with?('_')
        path.relative_path_from(Mica.config.contents_dir).to_s
      }.compact.then{|files| new(files) }
    end

    def self.all
      self['**']
    end


    attr_accessor :sounds

    def initialize(files)
      self.sounds = files.map{|f| Sound.new(f) }
    end

    def each(&block)
      sounds.each(&block)
    end

    def play
      sounds.each do |sound|
        puts "play: #{sound.dir}"
        sound.play
        sleep sound.recording_time
      end
    end
  end
end
