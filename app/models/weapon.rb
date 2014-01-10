require 'shoestrap/cms_model'

class Weapon < ActiveRecord::Base
  include Shoestrap::CMSModel

  CAT_PISTOLS = 'pistols'
  CAT_HEAVY = 'heavy'
  CAT_SMG = 'smg'
  CAT_RIFLES = 'rifles'
  CAT_MGS = 'machineguns'
  CATEGORIES = [CAT_PISTOLS, CAT_HEAVY, CAT_SMG, CAT_RIFLES, CAT_MGS]

  mount_uploader :image, AssetUploader
  mount_uploader :icon, AssetUploader

  index_attributes :name, :category, :image, :icon
end
