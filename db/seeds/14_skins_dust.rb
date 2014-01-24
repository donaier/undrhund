
# SKINS

# dust collection

Skin.create(
  name: 'Desert Storm',
  collection: 'Dust',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/desert_storm.png'),
  weapon_id: Weapon.find_by_name('M4A4').id
)

Skin.create(
  name: 'Palm',
  collection: 'Dust',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/palm.png'),
  weapon_id: Weapon.find_by_name('SCAR-20').id
)

Skin.create(
  name: 'Predator',
  collection: 'Dust',
  quality: Skin::QU_UNCOMMON,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/predator.png'),
  weapon_id: Weapon.find_by_name('AK-47').id
)

Skin.create(
  name: 'Copperhead',
  collection: 'Dust',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/copperhead.png'),
  weapon_id: Weapon.find_by_name('AUG').id
)

Skin.create(
  name: 'Snake Camo',
  collection: 'Dust',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/snake_camo.png'),
  weapon_id: Weapon.find_by_name('AWP').id
)

Skin.create(
  name: 'opper',
  collection: 'Dust',
  quality: Skin::QU_RARE,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/copper.png'),
  weapon_id: Weapon.find_by_name('Sawed-Off').id
)

Skin.create(
  name: 'Blaze',
  collection: 'Dust',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/blaze.png'),
  weapon_id: Weapon.find_by_name('Desert Eagle').id
)

Skin.create(
  name: 'Scorpion',
  collection: 'Dust',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/scorpion.png'),
  weapon_id: Weapon.find_by_name('P2000').id
)

Skin.create(
  name: 'Brass',
  collection: 'Dust',
  quality: Skin::QU_MYTHICAL,
  stattrak: false,
  souvenir: false,
  boxed: false,
  image: open('http://undrhund.s3.amazonaws.com/csgo/skins/dust/brass.png'),
  weapon_id: Weapon.find_by_name('Glock-18').id
)
