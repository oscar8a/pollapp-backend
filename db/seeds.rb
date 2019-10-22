# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'oscar', email: 'oscaremail', password: 'oscarpassword')
User.create(username: 'jack', email: 'jackemail', password: 'jackpassword')
User.create(username: 'morgan', email: 'morganemail', password: 'morganpassword')
User.create(username: 'gulnoza', email: 'gulnozaemail', password: 'gulnozapassword')

# Poll.create(poll_name: 'Wings with...?', user_id: 2, is_active: true, duration: 500)
# VoteOption.create(option_name: 'Blu Cheez', poll_id: 1)
# VoteOption.create(option_name: 'Rawnch', poll_id: 1)

# Poll.create(poll_name: 'BEC on a...', user_id: 1, is_active: true, duration: 300)
# VoteOption.create(option_name: 'Hero', poll_id: 2)
# VoteOption.create(option_name: 'Roll', poll_id: 2)

# Vote.create(user_id: 1,vote_option_id: 2)
# Vote.create(user_id: 3,vote_option_id: 3)
# Vote.create(user_id: 4,vote_option_id: 1)