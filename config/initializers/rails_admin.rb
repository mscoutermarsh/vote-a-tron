RailsAdmin.config do |config|
  config.current_user_method { current_admin } # auto-generated
  config.authenticate_with {} # leave it to authorize
  config.authorize_with do
    is_admin= ENV['ADMIN_EMAILS'].include?(current_admin.email)
    if current_admin
      redirect_to main_app.new_admin_session_url unless is_admin
    end
  end
  config.main_app_name = ['Vote-a-tron']
end
