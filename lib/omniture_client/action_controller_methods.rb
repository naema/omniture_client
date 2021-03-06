module OmnitureClient
  module ActionControllerMethods

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def reports_to_omniture
        include InstanceMethods
        before_filter :set_reporter, :assign_flash_vars
        attr_accessor :reporter
      end
    end

    module InstanceMethods
      def omniture_flash
        flash[:omniture] ||= {}
      end

      def omniture_url
        ssl = :ssl if request.ssl? && OmnitureClient::ssl_url
        reporter.url(ssl)
      end

      private

      def set_reporter
        @reporter ||= begin
           "#{controller_name}_reporter".camelize.constantize.new(self)
         rescue NameError
           BasicReporter.new(self)
         end
      end

      def assign_flash_vars
        omniture_flash.each do |name, value|
          reporter.add_var(name, value)
        end
      end
    end
  end
end

ActionController::Base.send(:include, OmnitureClient::ActionControllerMethods) if defined?(ActionController::Base)

#OmnitureClient::config(YAML::load(File.open(Rails.root.join('config', 'omniture.yml')))[Rails.env]) if File.exists?(Rails.root.join('config', 'omniture.yml'))
