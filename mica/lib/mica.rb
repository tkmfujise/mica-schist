# frozen_string_literal: true

require 'zeitwerk'
require 'osc-ruby'


module Mica
  class Error < StandardError; end

  class << self
    def configure(&block)
      yield config
    end

    def config
      @_config ||= Configuration.new
    end

    def loader
      @_loader ||= begin
        Zeitwerk::Loader.for_gem.tap do |loader|
          loader.enable_reloading
        end
      end
    end
  end
end


Mica.loader.setup
