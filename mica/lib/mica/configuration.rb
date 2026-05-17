module Mica
  class Configuration
    DEFAULT_CONTENTS_DIR   = Pathname('../content').realpath
    DEFAULT_OSC_HOST       = 'localhost:4560'
    DEFAULT_RECORDING_TIME = 5

    attr_accessor(
      :contents_dir,
      :osc_host,
      :recording_device,
      :recording_time,
    )

    def initialize
      self.contents_dir   = DEFAULT_CONTENTS_DIR
      self.osc_host       = DEFAULT_OSC_HOST
      self.recording_time = DEFAULT_RECORDING_TIME
    end
  end
end
