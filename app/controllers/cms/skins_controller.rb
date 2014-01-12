class Cms::SkinsController < Shoestrap::BaseController

  def new
    @skin = Skin.new(weapon: Weapon.find(params[:weapon_id]))
  end

  def update
    update!{ edit_cms_weapon_path(params[:weapon_id])}
  end

  def create
    create!{ edit_cms_weapon_path(params[:weapon_id]) }
  end

  def destroy
    destroy!{ edit_cms_weapon_path(params[:weapon_id]) }
  end
end
