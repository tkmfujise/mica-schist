module Mica
  class Recorder
    class << self

      # ref: https://gist.github.com/ideoforms/d64143e2bad16b18de6e97b91de494fd
      def devices
        `sox -V -t coreaudio null -n 2>&1 | grep "Found Audio" | cut -d'"' -f2`.split("\n")
      end


      def perform(device: nil, output:, duration: 10, &block)
        recorder = new(device)
        recorder.start
        thread = Thread.new do
          sleep duration
          recorder.stop
          # FileUtils.mv recorder.tmp, output
          pid = recorder.trim recorder.tmp.path, output.to_s
          Process.wait pid

          if block_given?
            yield output.to_s
          end
        end
      end
    end


    attr_accessor :device, :tmp, :pid

    def initialize(device = nil)
      self.device = device || Recorder.devices[-1]
    end

    def start
      self.tmp = Tempfile.new(['mica', 'output.wav'])
      cmd = ['sox', '-t', 'coreaudio', device, tmp.path]
      self.pid = Process.spawn(*cmd, out: File::NULL, err: File::NULL)
    end

    def stop
      return unless pid
      Process.kill(:TERM, pid)
      self.pid = nil
      tmp.path
    end


    def trim(input, output)
      cmd = ['sox', input, output, 'silence',
          '1', '0.1', '0.05%', # Head
          '1', '0.1', '0.05%', # Tail
        ]
      Process.spawn(*cmd)
    end
  end
end
