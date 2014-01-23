
# SKINS

# aztec collection

Skin.create(
  name: 'Forest Leaves',
  collection: 'Aztec',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/forest_leaves.png'),
  weapon_id: Weapon.find_by_name('Nova').id
)

Skin.create(
  name: 'Lichen Dashed',
  collection: 'Aztec',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/lichen_dashed.png'),
  weapon_id: Weapon.find_by_name('SSG 08').id
)

Skin.create(
  name: 'Jungle',
  collection: 'Aztec',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/jungle.png'),
  weapon_id: Weapon.find_by_name('Five-SeveN').id
)

Skin.create(
  name: 'Jungle Tiger',
  collection: 'Aztec',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/jungle_tiger.png'),
  weapon_id: Weapon.find_by_name('M4A4').id
)

Skin.create(
  name: 'Jungle Spray',
  collection: 'Aztec',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/jungle_spray.png'),
  weapon_id: Weapon.find_by_name('AK-47').id
)

Skin.create(
  name: 'Ossified',
  collection: 'Aztec',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/aztec/ossified.png'),
  weapon_id: Weapon.find_by_name('Tec-9').id
)
