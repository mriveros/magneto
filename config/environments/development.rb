Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  config.assets.precompile += %w( modulos/usuarios.js modulos/controladores.js modulos/roles.js modulos/personas.js modulos/matriculaciones.js modulos/matriculaciones_superior.js gmaps/gmaps.js gmaps/markerclusterer.js jquery.mask.min.js sweetalert.min.js sweetalert.css AdminLTE.min.css ionicons.min.css morris.css morris.min.js raphael.min.js )


  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

=begin
  config.action_mailer.delivery_method = :smtp 

  config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => ENV['gmail_username'],
  :password             => ENV['gmail_password'],
  :authentication       => "plain",
  :enable_starttls_auto => true
  }

=end
  config.action_mailer.smtp_settings = {
    :address              => "mail.mec.gov.py",
    :port                 => 587,
    :domain => 'mec.gov.py',
    :user_name            => "noresponder@mec.gov.py",
    :password             => "mec8vm201501*",
    :authentication       => "plain",
    :enable_starttls_auto => true,
    :openssl_verify_mode => 'none'
  }

end
