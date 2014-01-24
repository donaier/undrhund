
# SKINS

# vertigo collection

Skin.create(
  name: 'Urban DDPAT',
  collection: 'Vertigo',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/urban_ddpat.png'),
  weapon_id: Weapon.find_by_name('MAC-10').id
)

Skin.create(
  name: 'Urban Perforated',
  collection: 'Vertigo',
  quality: Skin::QU_COMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/urban_perforated.png'),
  weapon_id: Weapon.find_by_name('XM1014').id
)

Skin.create(
  name: 'Carbon Fiber',
  collection: 'Vertigo',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/carbon_fiber.png'),
  weapon_id: Weapon.find_by_name('PP-Bizon').id
)

Skin.create(
  name: 'Glacier Mesh',
  collection: 'Vertigo',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/glacier_mesh.png'),
  weapon_id: Weapon.find_by_name('P90').id
)

Skin.create(
  name: 'Black Laminate',
  collection: 'Vertigo',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/black_laminate.png'),
  weapon_id: Weapon.find_by_name('AK-47').id
)

Skin.create(
  name: 'Demolition',
  collection: 'Vertigo',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/vertigo/demolition.png'),
  weapon_id: Weapon.find_by_name('Dual Berettas').id
)
