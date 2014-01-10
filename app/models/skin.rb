require 'shoestrap/cms_model'

class Skin < ActiveRecord::Base
  include Shoestrap::CMSModel

  # TODO: Define what attributes are shown in the form and permitted by strong parameters
  editable_attributes :name, :collection, :quality, :stattrak, :souvenir, :boxed, :image, :weapon_id

  # TODO: Define what attributes are shown in the index view
  index_attributes :name, :collection, :quality, :stattrak, :souvenir, :boxed, :image, :weapon_id
end
