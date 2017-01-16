Rails.application.configure do

  config.cache_classes = true

  config.eager_load = false

  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    "Cache-Control" => "public, max-age=3600"
  }
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_dispatch.show_exceptions = false

  config.action_controller.allow_forgery_protection = false
  config.action_mailer.perform_caching = false

  config.action_mailer.delivery_method = :smtp
  config.assets.raise_runtime_errors = true
  config.action_mailer.default_url_options = {host: "localhost:3000",
    protocol: "http://"}
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    user_name: ENV["GMAIL_USERNAME"],
    password: ENV["GMAIL_PASSWORD"],
    authentication: "plain",
    enable_starttls_auto: true}

  config.active_support.deprecation = :stderr

end
