# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|

  navigation.items do |primary|
    # primary.dom_class = 'inline-list'

    # primary.item 1, 'Home', '/'
    primary.item 2, 'Guns', weapons_path, :highlights_on => %r(/weapons)
    primary.item 3, 'Skins', '/'
    primary.item 4, 'Stats', '/'
  end
end
