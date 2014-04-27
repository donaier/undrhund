# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    if current_clan_member
      primary.item 1, 'Board', topics_path, highlights_on: %r(/fag-board)
      primary.item 2, 'Members', clan_members_path
      primary.item 3, 'Profile', clan_member_path(current_clan_member)
      primary.item 4, 'Sign Out', destroy_clan_member_session_path, method: :delete
    else
      primary.item 1, 'Sign Up!', new_clan_member_registration_path
      primary.item 2, 'Members', clan_members_path
      primary.item 3, 'Sign In', new_clan_member_session_path
    end
  end
end
