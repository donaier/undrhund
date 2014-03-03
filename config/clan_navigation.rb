# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    primary.item 1, 'Sign Up!', new_clan_member_registration_path unless current_clan_member
    primary.item 2, 'Members', clan_members_path
    primary.item 3, 'Sign Out', destroy_clan_member_session_path, method: :delete if current_clan_member
    primary.item 3, 'Sign In', new_clan_member_session_path unless current_clan_member
  end
end