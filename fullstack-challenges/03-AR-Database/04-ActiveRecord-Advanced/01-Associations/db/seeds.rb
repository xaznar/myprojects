# TODO: Write a seed
require 'faker'


5.times do
  user = User.create(username: Faker::Name.first_name, email: Faker::Internet.email)
  10.times do
  post = Post.new(title: Faker::Name.name, url: Faker::Internet.url)
  post.user = user
  post.save
  end

end
