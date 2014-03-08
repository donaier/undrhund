class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    clan_member_path(current_clan_member)
  end
end
