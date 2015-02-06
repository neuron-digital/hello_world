Rails.application.configure do
  config.cache_classes                       = true
  config.eager_load                          = true
  config.quiet_assets                        = false
  config.consider_all_requests_local         = false

  config.action_controller.perform_caching   = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_files = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

  config.assets.precompile += %w( application.js
                                  application.css )

  # Disable delivery errors, bad email addresses will be ignored
  config.assets.expire_after 2.weeks

  config.action_dispatch.x_sendfile_header   = 'X-Accel-Redirect'
  config.i18n.fallbacks                      = true
  config.active_support.deprecation          = :notify

  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.delivery_method       = :sendmail
  config.action_mailer.default_url_options   = { host: 'hello.nnbs.ru'}

  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false
end