require 'shoestrap/cms_model'

class Post < ActiveRecord::Base
  include Shoestrap::CMSModel

  belongs_to :clan_member
  belongs_to :topic

  editable_attributes :topic_id, :clan_member_id, :text
end
