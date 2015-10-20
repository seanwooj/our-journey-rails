require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module OurJourneyRails
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.assets.enabled = true
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_componenets')
  end
end
