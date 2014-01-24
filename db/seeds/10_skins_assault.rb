
# SKINS

# assault collection

Skin.create(
  name: 'Caramel',
  collection: 'Assault',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/caramel.png'),
  weapon_id: Weapon.find_by_name('UMP-45').id
)

Skin.create(
  name: 'Hot Rod',
  collection: 'Assault',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/hot_rod.png'),
  weapon_id: Weapon.find_by_name('AUG').id
)

Skin.create(
  name: 'Fade',
  collection: 'Assault',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/fade.png'),
  weapon_id: Weapon.find_by_name('Glock-18').id
)

Skin.create(
  name: 'Bulldozer',
  collection: 'Assault',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/bulldozer.png'),
  weapon_id: Weapon.find_by_name('MP9').id
)

Skin.create(
  name: 'Tornado',
  collection: 'Assault',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/tornado.png'),
  weapon_id: Weapon.find_by_name('SG 553').id
)

Skin.create(
  name: 'Anodized Navi',
  collection: 'Assault',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/anodized_navy.png'),
  weapon_id: Weapon.find_by_name('Negev').id
)

Skin.create(
  name: 'Candy Apple',
  collection: 'Assault',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/assault/candy_apple.png'),
  weapon_id: Weapon.find_by_name('Five-SeveN').id
)
