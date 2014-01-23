require 'shoestrap/cms_model'

class Skin < ActiveRecord::Base
  include Shoestrap::CMSModel

  belongs_to :weapon

  # white
  QU_COMMON = 'common'
  # light blue
  QU_UNCOMMON = 'uncommon'
  # darker blue
  QU_RARE = 'rare'
  # purple
  QU_MYTHICAL = 'mythical'
  # pinkish blue
  QU_LEGENDARY = 'legendary'
  # red
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
