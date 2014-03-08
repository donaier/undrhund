require 'shoestrap/cms_model'

class Topic < ActiveRecord::Base
  include Shoestrap::CMSModel

  belongs_to :clan_member

  before_validation :set_position

  CATEGORIES = %w(Info Clan General Off-Topic)

  VISIBILITIES = %w(visible members-only archived hidden)

  validates_presence_of :category, :clan_member_id, :visibility, :title, :text, :position

  editable_attributes :category, :clan_member_id, :visibility, :title, :text, :sticky, :position

  index_attributes :category, :clan_member_id, :visibility, :title, :text, :sticky

  private

  def set_position
    self.position ||= self.class.maximum(:position).to_i + 1
  end
end
