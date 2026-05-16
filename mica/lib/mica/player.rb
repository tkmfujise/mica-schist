module Mica
  class Player
    class << self
      def current
        @current ||= new
      end
    end

    attr_accessor :client

    def initialize
      self.client = OSC::Client.new(*osc_host)
    end

    def play(code)
      client.send OSC::Message.new 'eval', code
    end


    private
      # 'localhost:4560' => ['localhost', '4560']
      def osc_host
        Mica.config.osc_host.split(':')
      end
  end
end
