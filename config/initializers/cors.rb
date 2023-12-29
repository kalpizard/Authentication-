# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin Ajax requests.

# Read more: https://github.com/cyu/rack-cors

# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "http://localhost:3000"

#     resource "*" ,
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head],

#       credentials: true 

#   end
#   allow do
#     origins "http://localhost:5173/"

#     resource "*" ,
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete, :options, :head],

#       credentials: true 
      
#   end
# end

###############CHATGPT
# config/application.rb

# module YourRailsApp
#   class Application < Rails::Application
#     # ... Otras configuraciones ...

#     # Configuración de CORS
#     config.middleware.insert_before 0, Rack::Cors do
#       allow do
#         origins "http://localhost:3000"
#         resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
#       end

#       allow do
#         origins "http://localhost:5173"
#         resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
#       end
#     end
#   end
# end



###########sin 30000

# config/application.rb o config/application.rb

Rails.application.configure do
  config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:5173'
      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
  end
end


