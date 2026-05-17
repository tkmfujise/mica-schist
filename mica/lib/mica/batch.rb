module Mica
  class Batch
    # Mica::Batch['cc0/**']
    def self.[](keyword)
      Dir[Mica.config.contents_dir.join("#{keyword}/*.rb")].map{|path|
        Pathname(path).relative_path_from(Mica.config.contents_dir).to_s
      }.then{|files| new(files) }
    end

    def self.all
      self['**']
    end


    attr_accessor :sounds

    def initialize(files)
      self.sounds = files.map{|f| Sound.new(f) }
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
