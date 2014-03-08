# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :pages, Kuhsaft::Page.model_name.human(:count => 2), kuhsaft.cms_pages_path, :highlights_on => %r(/cms$|/cms/pages)
    primary.item :weapon_nav, t('cms.weapons.navigation_title'), cms_weapons_path
    primary.item :clan_member_nav, t('cms.clan_members.navigation_title'), cms_clan_members_path
    primary.item :topic_nav, t('cms.topics.navigation_title'), cms_topics_path
    primary.dom_class = 'nav'
  end
  navigation.selected_class = 'active'
end
