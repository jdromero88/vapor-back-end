# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  ryan = User.create(username: 'rsmith',
  password: 'rsmith',
  email: 'ryan@vapor.com',
  first_name: 'Ryan',
  last_name: 'Smith',
  birthdate: '01-02-1995',
  bio: 'Hello World - Vapor',
  user_avatar: 'https://pickaface.net/gallery/avatar/unr_ryan_170527_2027_2q2fmge.png')

  jose = User.create(username: 'Jose',
  password: 'jose',
  email: 'jose@vapor.com',
  first_name: 'José',
  last_name: 'Romero',
  birthdate: '08-02-1988',
  bio: 'Hola Mundo Vapor',
  user_avatar: 'https://steamuserimages-a.akamaihd.net/ugc/612799444232117080/0C83D7069E014FCA1C17EA9C879DA46F7E9CDE9A/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false')


  chine = User.create(username: 'chine',
  password: 'chine',
  email: 'chine@vapor.com',
  first_name: 'Chine',
  last_name: 'Anikwe',
  birthdate: '01-02-1995',
  bio: 'Hello World - Vapor',
  user_avatar: 'https://pickaface.net/gallery/avatar/unr_ryan_170527_2027_2q2fmge.png')


#   User.create(username: 'someone',
#   password: 'someone',
#   email: 'someone@vapor.com',
#   first_name: 'someone',
#   last_name: 'else',
#   birthdate: '01-02-1995',
#   bio: 'Hello World - Vapor',
#   user_avatar: 'https://pickaface.net/gallery/avatar/unr_ryan_170527_2027_2q2fmge.png')
