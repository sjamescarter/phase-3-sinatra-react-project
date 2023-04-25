puts "🌱 Seeding..."

Post.create(author: 'Jonathan Barthel', title: 'S01 - Special Catch-up/Medical Emergency on-board podcast', body: 'This podcast is dedicated Subodh Kumar Sinha, the father of a fellow listener/former co worker. Also, I catch everyone up on what has happened in the last six weeks. What I did when I had someone who had a panic attack on-board and talked about my motivation talk/ted talk to the university of Nebraska-Kearney. A lot going on in this episode lol.')
Post.create(author: 'Jonathan Barthel', title: 'S01 E01 - My Journey to becoming a Captain', body: 'Talking about my journey of how I became a Captain! I am also dedicating this first official podcast to Gene Ferguson and family. I will never be able to thank you enough for what you did in my life, But here it goes "Thank You from the bottom of my heart". yours truly Captain Jonny')
Post.create(author: 'Jonathan Barthel', title: 'S01 E02 - My Journey to becoming a Captain part 2', body: 'This is part two of my journey of how I became a Captain! I am also dedicating this podcast to my Grandpa "Clifford Woolley". I will always be grateful for everything you did in my life and for giving me the itch/bug to want to travel. I will do my best to always live in your foot steps.')
Post.create(author: 'Jonathan Barthel', title: 'S01 E03 - My Journey to becoming a Captain part 3', body: 'This is part 3 of the series of me becoming a Captain, This talks about me growing up. I learned skills though working a paper work that helped me become more independent, starting high school and going to my local community college.')

Comment.create(name: 'Tom', comment: 'Cool, cool', post_id: Post.first)
Comment.create(name: 'citygirl4545', comment: 'I want to be a pilot', post_id: Post.first)
Comment.create(name: 'Jim', comment: 'Gene sounds like an awesome guy!', post_id: Post.second)
Comment.create(name: 'Sarah Jane', comment: 'My grandpa was a real inspiration to me as well', post_id: Post.third)
Comment.create(name: 'Heather', comment: 'Thanks for sharing', post_id: Post.last)
Comment.create(name: 'citygirl4545', comment: 'What\'s the first step to becoming a pilot?', post_id: Post.last)

puts "✅ Done seeding!"
