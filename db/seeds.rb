user1 = User.create(name: "Maha", dob: "2000-08-22", email: "maha@example.com", phone_number: "01040943934")
user2 = User.create(name: "Aya", dob: "2000-11-01", email: "aya@example.com", phone_number: "0111111111")
post1 = Post.create(title: "First Post", content: "Content here", user_id: user1)
post2 = Post.create(title: "Second Post", content: "More content", user_id: user2)

EditorsPost.create(user: user2, post: post1) 
EditorsPost.create(user: user1, post: post2)