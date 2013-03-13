require 'omniture_client/printer'
require 'omniture_client/base'
require 'omniture_client/var'
require 'omniture_client/meta_var'
require 'omniture_client/controller_methods'
require 'omniture_client/railtie' if defined?(Rails)

require 'cgi'

class BasicReporter < OmnitureClient::Base; end

module OmnitureClient
  class << self
    attr_accessor :aliases, :base_url, :ssl_url, :suite, :version

    def config(config_hash)
      config_hash.each do |key, val|
        send("#{key}=", val)
      end
    end
  end
end

require 'omniture_client/action_controller_methods'
