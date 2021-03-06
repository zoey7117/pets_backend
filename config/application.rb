require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PetsBackend
  class Application < Rails::Application

    config.middleware.insert_before 0, Rack::Cors do
     allow do
       origins 'https://adopt-a-pet.netlify.com','http://localhost:3002','http://localhost:3003','http://localhost:3001','http://localhost:3001', 'http://adopt-a-pet.netlify.com'
       resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
     end
   end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.api_only = true
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
