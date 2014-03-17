require 'shoestrap/cms_model'
require 'open-uri'

class ClanMember < ActiveRecord::Base
  include Shoestrap::CMSModel
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :authentication_keys => [:username]

  has_attached_file :avatar,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :username, :steam_link

  has_many :topics
  has_many :posts

  FREQUENCIES = ['erry day!', 'couple times a week', 'once a week', 'few times a month']
  RANKS = [
            'SILVER I',
            'SILVER II',
            'SILVER III',
            'SILVER IV',
            'SILVER ELITE',
            'SILVER ELITE MASTER',
            'GOLD NOVA I',
            'GOLD NOVA II',
            'GOLD NOVA III',
            'GOLD NOVA MASTER',
            'MASTER GUARDIAN I',
            'MASTER GUARDIAN II',
            'MASTER GUARDIAN ELITE',
            'DISTINGUISHED MASTER GUARDIAN',
            'LEGENDARY EAGLE',
            'LEGENDARY EAGLE MASTER',
            'SUPREME MASTER FIRST CLASS',
            'THE GLOBAL ELITE'
          ]

  editable_attributes :username, :steam_link, :frequency, :current_rank, :languages, :steam_id, :avatar

  scope :timelined, -> { order('created_at ASC') }

  def avatar_image
    avatar.present? ? avatar : 'clan_member/default_avatar.png'
  end

  def steam_link_tag(caption='on Steam')
    ActionController::Base.helpers.link_to caption, "http://www.steamcommunity.com/id/#{steam_link}", target: '_blank' if steam_link.present?
  end

  def set_steam_data
    if steam_link.present?
      xml = Nokogiri::XML(open("http://www.steamcommunity.com/id/#{steam_link}/?xml=1"))
      id = xml.xpath('//steamID64').text
      if id.present?
        image_path = xml.xpath('//avatarFull').first.text
        update_attributes(steam_id: id, avatar: open(URI.parse(image_path)))
      end
    end
  end
end
