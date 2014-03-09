require 'shoestrap/cms_model'

class Topic < ActiveRecord::Base
  include Shoestrap::CMSModel

  belongs_to :clan_member
  has_many :posts

  before_validation :set_position

  CATEGORIES = %w(Info General Clan Off-Topic)

  VISIBILITIES = %w(visible members-only archived hidden)

  validates_presence_of :category, :clan_member_id, :visibility, :title, :text, :position

  editable_attributes :category, :clan_member_id, :visibility, :title, :text, :sticky, :position

  index_attributes :category, :clan_member_id, :visibility, :title, :text, :sticky

  def posts_tag
    tag = "Posts: #{self.posts.count}"
    tag << " (last from #{self.posts.last.clan_member.username})" if self.posts.any?
    tag
  end

  private

  def set_position
    self.position ||= self.class.maximum(:position).to_i + 1
  end
end
