require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PetsBackend
  class Application < Rails::Application

   #  config.middleware.insert_before 0, Rack::Cors do
   #   allow do
   #     origins '*'
   #     resource '*', headers: :any, methods: [:get, :post, :options]
   #   end
   # end
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    config.api_only = true
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore


    config.autoload_paths << Rails.root.join('lib')
      config.middleware.insert_before 0, Rack::Cors do
        allow do
          origins 'https://adopt-a-pet.netlify.com', 'http://adopt-a-pet.netlify.com','http://unruffled-babbage-7875d2.netlify.com', 'http://localhost:3001', 'http://localhost:3002','https://unruffled-babbage-7875d2.netlify.com'
          resource '*', :headers => :any, :methods => [:get, :patch, :put, :delete, :post, :options, :head]
    # , key: '_cookie_name'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
