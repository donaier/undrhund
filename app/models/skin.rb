require 'shoestrap/cms_model'

class Skin < ActiveRecord::Base
  include Shoestrap::CMSModel

  belongs_to :weapon

  QU_COMMON = 'common'
  QU_UNCOMMON = 'uncommon'
  QU_RARE = 'rare'
  QU_MYTHICAL = 'mythical'
  QU_LEGENDARY = 'legendary'
  QU_ANCIENT = 'ancient'
  QUALITIES = [QU_COMMON, QU_UNCOMMON, QU_RARE, QU_MYTHICAL, QU_LEGENDARY, QU_ANCIENT]

  has_attached_file :image, styles: {
    thumb: '200x200>'
  }

  editable_attributes :name, :collection, :quality, :stattrak, :souvenir, :boxed, :image, :weapon_id

  def search_query
    "#{self.weapon.name} #{self.name}".gsub(/\W/, '+')
  end
end
