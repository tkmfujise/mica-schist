module Mica
  class Configuration
    DEFAULT_CONTENTS_DIR = Pathname('../content').realpath
    DEFAULT_OSC_HOST = 'localhost:4560'

    attr_accessor :contents_dir, :osc_host

    def initialize
      self.contents_dir = DEFAULT_CONTENTS_DIR
      self.osc_host = DEFAULT_OSC_HOST
    end
  end
end
