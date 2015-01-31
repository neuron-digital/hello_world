class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    omniauth_params = request.env['omniauth.auth']
    user = User.where(provider: omniauth_params[:provider], uid: omniauth_params[:uid]).first_or_create
    sign_in :user, user
    redirect_to root_path
  end

end