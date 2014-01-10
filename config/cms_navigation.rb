# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :pages, Kuhsaft::Page.model_name.human(:count => 2), kuhsaft.cms_pages_path, :highlights_on => %r(/cms$|/cms/pages)
    primary.dom_class = 'nav'
  end
  navigation.selected_class = 'active'
end
