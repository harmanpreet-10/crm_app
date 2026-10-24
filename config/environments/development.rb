
require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Make code changes take effect immediately.
  config.enable_reloading = true

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing.
  config.server_timing = true

  # Enable/disable Action Controller caching.
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.public_file_server.headers = {
      "cache-control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
  end

  # Application cache.
  config.cache_store = :memory_store

  # Store uploaded files locally.
  config.active_storage.service = :local

  # Action Mailer settings.
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = {
    host: "localhost",
    port: 3000
  }

  # Log deprecation notices.
  config.active_support.deprecation = :log

  # Raise error for pending migrations.
  config.active_record.migration_error = :page_load

  # Database logging.
  config.active_record.verbose_query_logs = true
  config.active_record.query_log_tags_enabled = true

  # Background job logging.
  config.active_job.verbose_enqueue_logs = true

  # Redirect logging.
  config.action_dispatch.verbose_redirect_logs = true

  # Suppress asset request logging.
  config.assets.quiet = true

  # Disable Sprockets filesystem asset cache.
  # Helps avoid Windows file rename permission errors.
  config.assets.configure do |env|
    env.cache = nil
  end

  # Annotate rendered views.
  config.action_view.annotate_rendered_view_with_filenames = true

  # Raise errors for missing callback actions.
  config.action_controller.raise_on_missing_callback_actions = true
end
