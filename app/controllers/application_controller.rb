class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  helper Kuhsaft::Engine.helpers

  def after_sign_in_path_for(clan_member)
    clan_member_path(current_clan_member)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :password, :remember_me, :steam_link, :frequency, :current_rank) }
  end
end
