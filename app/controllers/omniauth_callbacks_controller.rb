class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    user = User.where(provider: omniauth_params[:provider], uid: omniauth_params[:uid]).first_or_create
    sign_in :user, user
    redirect_to root_path
  end
end