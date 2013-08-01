User.delete_all

user1 = User.create(name: 'Zhao', email: 'zhao@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user2 = User.create(name: 'Omar', email: 'omar@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user3 = User.create(name: 'Dylan', email: 'dylan@gmail.com', password: 'pass123', password_confirmation: 'pass123')
user4 = User.create(name: 'Isabel', email: 'belcortes@gmail.com', password: 'pass123', password_confirmation: 'pass123', admin: true)

# puts user4.errors.full_messages