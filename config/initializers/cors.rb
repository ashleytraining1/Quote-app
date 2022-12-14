
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "*"
  
      resource "*",
        headers: :any,
        methods: [:create, :get, :post, :patch, :delete, :options, :head]
    end
  end