class SkinsController < ApplicationController
  def index
    @skins = Skin.all
  end
end
