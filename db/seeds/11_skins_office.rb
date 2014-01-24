
# SKINS

# office collection

Skin.create(
  name: 'Contrast Spray',
  collection: 'Office',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/contrast_spray.png'),
  weapon_id: Weapon.find_by_name('FAMAS').id
)

Skin.create(
  name: 'Arctic Came',
  collection: 'Office',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/arctic_camo.png'),
  weapon_id: Weapon.find_by_name('G3SG1').id
)

Skin.create(
  name: 'Blizzard Marbleized',
  collection: 'Office',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/blizzard_marbleized.png'),
  weapon_id: Weapon.find_by_name('M249').id
)

Skin.create(
  name: 'Winter Forest',
  collection: 'Office',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/winter_forest.png'),
  weapon_id: Weapon.find_by_name('Galil AR').id
)

Skin.create(
  name: 'Silver',
  collection: 'Office',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/silver.png'),
  weapon_id: Weapon.find_by_name('P2000').id
)

Skin.create(
  name: 'Whiteout',
  collection: 'Office',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/office/whiteout.png'),
  weapon_id: Weapon.find_by_name('MP7').id
)
