# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    primary.item 1, 'Sign Up!', new_clan_member_path
    primary.item 2, 'Members', clan_members_path
  end
end
