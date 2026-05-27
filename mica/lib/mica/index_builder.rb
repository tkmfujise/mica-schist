module Mica
  class IndexBuilder
    class << self
      def all
        files = Mica.config.contents_dir.glob('**/index.txt')
        files.map{|f| new(f) }
      end

      def run
        all.each(&:perform)
      end
    end

    attr_accessor :file

    def initialize(file)
      self.file = file
    end

    def scripts
      file.parent.glob('**/*.rb').reject{|path|
        path.parent.basename.to_s.start_with?('_')
      }
    end

    def script_paths
      scripts.map{|path|
        '/' + path.relative_path_from(Mica.config.contents_dir).to_s
      }.sort_by{|path|
        path.start_with?('/cc0') ? [0, path] : [1, path]
      }
    end

    def perform
      file.write(script_paths.join("\n"))
    end
  end
end
