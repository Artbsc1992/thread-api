# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


arturo = User.create(name: 'Arturo', email: 'arturo@gmail.com')
admin = User.create(name: 'GigaChad', email: 'admin@gmail.com')
daniel = User.create(name: 'Daniel', email: 'daniel@gmail.com')

daniel.friends << arturo
arturo.friends << daniel

daily = Daily.create(user_id: admin.id, content: 'Hello, world!')

dandailynotif = Notification.create(user_id: daniel.id, daily_id: daily.id, viewed: false, message: 'GigaChad just posted today\'s daily!')
artdailynotif = Notification.create(user_id: arturo.id, daily_id: daily.id, viewed: false, message: 'GigaChad just posted today\'s daily!')

artcomment = Comment.create(user_id: arturo.id, content: 'Hello indeed!')

artcommentnotif = Notification.create(user_id: daniel.id, daily_id: daily.id, viewed: false, message: 'Arturo commented: "Hello indeed!"')
