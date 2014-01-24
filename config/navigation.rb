# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    # primary.item 1, 'Home', '/'
    primary.item 2, 'Guns', weapons_path, :highlights_on => %r(/weapons)
    primary.item 3, 'Skins', skins_path
    primary.item 4, 'Knives', knives_path
    primary.item 5, 'Stats', stats_path
  end
end
