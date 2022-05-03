require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TweettApplication
  class Application < Rails::Application
    config.load_defaults 6.0
    config.time_zone = 'Africa/Abidjan'
    config.active_record.default_timezone = :local
  end
end
