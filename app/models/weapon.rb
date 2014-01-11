require 'shoestrap/cms_model'

class Weapon < ActiveRecord::Base
  include Shoestrap::CMSModel

  has_many :skins

  CAT_PISTOLS = 'pistols'
  CAT_SMG = 'smg'
  CAT_RIFLES = 'rifles'
  CAT_HEAVY = 'heavy'
  CAT_MGS = 'machineguns'
  CATEGORIES = [CAT_PISTOLS, CAT_SMG, CAT_RIFLES, CAT_HEAVY, CAT_MGS]

  mount_uploader :image, AssetUploader
  mount_uploader :icon, AssetUploader

  validates_presence_of :name, :category, :image, :price

  editable_attributes :name, :category, :available_ct, :available_t, :image, :icon, :price
end
