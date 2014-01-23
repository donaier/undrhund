require 'shoestrap/cms_model'

class Weapon < ActiveRecord::Base
  include Shoestrap::CMSModel

  has_many :skins

  CAT_PISTOLS = 'pistols'
  CAT_SMG = 'smg'
  CAT_RIFLES = 'rifles'
  CAT_HEAVY = 'heavy'
  CATEGORIES = [CAT_PISTOLS, CAT_SMG, CAT_RIFLES, CAT_HEAVY]

  has_attached_file :icon
  has_attached_file :image, styles: {
    thumb: '200x200>'
  }

  validates_presence_of :name, :category, :image, :price

  editable_attributes :name, :category, :available_ct, :available_t, :image, :icon, :price

  default_scope order('id ASC')

  def sort_options
    "#{self.category} ct-#{self.available_ct} t-#{available_t}"
  end
end
