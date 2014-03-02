require 'shoestrap/cms_model'

class ClanMember < ActiveRecord::Base
  include Shoestrap::CMSModel

  validates_presence_of :name, :frequency

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

  editable_attributes :name, :steam_link, :frequency, :current_rank, :message

end
