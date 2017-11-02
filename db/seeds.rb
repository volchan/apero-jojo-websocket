User.destroy_all

User.create!(
  email: 'contact@volchan.fr',
  password: 'azerty'
)

User.create!(
  email: 'aperojojo@gmail.com',
  password: 'azerty'
)

user = User.first

Post.create!(
  title: 'Vive les apèros jojo !!',
  text: 'Les apéros jojo c\'est trop cool!',
  user: user
)

Post.create!(
  title: 'Jojo le plus grand',
  text: 'Jojo le plus grands d\'entre nous!',
  user: user
)
