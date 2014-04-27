# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    primary.item 1, 'Home', '/'
    primary.item 2, 'Friendly Average Gamers', clans_path, highlights_on: %r(/fag|/clan_members)
    primary.item 3, 'Guns', weapons_path, highlights_on: %r(/weapons)
  end
end
