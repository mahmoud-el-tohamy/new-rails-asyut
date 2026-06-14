PostEditor.destroy_all
Post.destroy_all
User.destroy_all

user1 = User.create!(name: "Mahmoud", email: "mahmoud@example.com", DOB: "1998-01-01", phone_number: "01012345678", address: "Mansoura")
user2 = User.create!(name: "Ahmed", email: "ahmed@example.com", DOB: "1999-01-01", phone_number: "01112345678", address: "Cairo")

post1 = Post.create!(title: "My First Post", content: "Hello Rails!", creator: user1)

PostEditor.create!(post: post1, editor: user2)

puts "Database seeded successfully!"