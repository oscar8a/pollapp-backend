# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'oscar', email: 'oscaremail', password: 'oscarpassword')
User.create(username: 'user1', email: 'user1email', password: 'user1password')
User.create(username: 'user2', email: 'user2email', password: 'user2password')
User.create(username: 'user3', email: 'user3email', password: 'user3password')
User.create(username: 'user4', email: 'user4email', password: 'user4password')

Poll.create(poll_name: 'what is better?', user_id: 2)
VoteOption.create(option_name: 'water', poll_id: 1)
VoteOption.create(option_name: 'tea', poll_id: 1)

Poll.create(poll_name: 'what is worse?', user_id: 1)
VoteOption.create(option_name: 'hot', poll_id: 2)
VoteOption.create(option_name: 'cold', poll_id: 2)

Vote.create(user_id: 1,vote_option_id: 2)
Vote.create(user_id: 3,vote_option_id: 3)
Vote.create(user_id: 4,vote_option_id: 1)