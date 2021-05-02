# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# This file ensures that all of our requests are coming from permitted origins. It also specifies which urls have permission to send a request to our API.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*' # the site (URL) that we are hosting from goes here, but for the purposes of this project, a simple '*' will be sufficient.

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
