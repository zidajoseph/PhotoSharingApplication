require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module TweettApplication
  class Application < Rails::Application
    config.load_defaults 6.0
    config.time_zone = 'Africa/Abidjan'
    config.active_record.default_timezone = :local
    config.generators do |g|
      # The description in these two lines creates a Settings that is not automatically generated.
      g.assets false
      g.helper false
    end
  end
end
