
ActiveAdmin.setup do |config|
  # Application title
  config.site_title = "Crm App"

  # Require admin login
  config.authentication_method = :authenticate_admin_user!

  # Identify the logged-in admin
  config.current_user_method = :current_admin_user

  # Admin logout
  config.logout_link_path = :destroy_admin_user_session_path

  # Enable batch actions
  config.batch_actions = true

  # Hide sensitive password fields
  config.filter_attributes = [
    :encrypted_password,
    :password,
    :password_confirmation
  ]

  # Display dates and times
  config.localize_format = :long
end
