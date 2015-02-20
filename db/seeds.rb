# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
posts = [
  {
    title: "First Post",
    username: "madmaxx",
    link: "https://www.google.com/",
    description: "This link is like totally rad!!!!",
  },
  {
    title: "Got it!!!",
    username: "peanut",
    link: "https://www.yahoo.com/",
    description: "This page suxxxxxx!!!!",
  },

]

comments = [
  {
    username: "peanut",
    body: "I've seen better",
    post_id: 1,
  },
  {
    username: "pandamonster",
    body: "meh",
    post_id: 1,
  },
  {
    username: "pandamonster",
    body: "crazy, thats all I'm saying. Crazy",
    post_id: 2,
  },
]

posts.each do |x|
  Post.create(x)
end
comments.each do |x|
  Comment.create(x)
end