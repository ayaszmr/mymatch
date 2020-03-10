p "create Users"
User.create!(
  email: 'ueno@example.com',
  password: 'aaaaaaaa',
  name: 'ueno',
  self_introduction: '上野です',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/u.jpg")
)
User.create!(
  email: 'oji@example.com',
  password: 'aaaaaaaa',
  name: 'oji',
  self_introduction: '王子です',
  sex: 0,
  img_name: open("#{Rails.root}/db/dummy_img/ou.jpg")
)
User.create!(
  email: 'ooisi@example.com',
  password: 'aaaaaaaa',
  name: 'ooisi',
  self_introduction: '大石です',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/oo.jpg")
)
User.create!(
  email: 'iwata@example.com',
  password: 'aaaaaaaa',
  name: 'iwata',
  self_introduction: '岩田です',
  sex: 1,
  img_name: open("#{Rails.root}/db/dummy_img/i.jpg")
)