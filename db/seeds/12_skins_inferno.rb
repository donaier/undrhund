
# SKINS

# inferno collection

Skin.create(
  name: 'Sand Dune',
  collection: 'Inferno',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/sand_dune.png'),
  weapon_id: Weapon.find_by_name('MAG-7').id
)

Skin.create(
  name: 'Walnut',
  collection: 'Inferno',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/walnut.png'),
  weapon_id: Weapon.find_by_name('Nova').id
)

Skin.create(
  name: 'Gunsmoke',
  collection: 'Inferno',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/gunsmoke.png'),
  weapon_id: Weapon.find_by_name('P250').id
)

Skin.create(
  name: 'Tornado',
  collection: 'Inferno',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/tornado.png'),
  weapon_id: Weapon.find_by_name('M4A4').id
)

Skin.create(
  name: 'Anodized Navy',
  collection: 'Inferno',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/anodized_navy.png'),
  weapon_id: Weapon.find_by_name('Dual Berettas').id
)

Skin.create(
  name: 'Brass',
  collection: 'Inferno',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/inferno/brass.png'),
  weapon_id: Weapon.find_by_name('Tec-9').id
)
