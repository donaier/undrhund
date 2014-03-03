class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    clan_members_path
  end
end
