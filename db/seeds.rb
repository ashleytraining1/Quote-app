puts "🌱 Seeding quotes..."


puts "Creating users..."
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)
User.create(name: Faker::Name.name)


  Quote.create( category: "Love", description: "Spread love everywhere you go. Let no one ever come to you without leaving happier") 
  Quote.create( category: "Love", description: "Age does not protect you from love, but love to some extent protects you from age.")
  Quote.create( category: "Love", description: "We need not think alike to love alike")
  Quote.create( category: "Love", description: "Love is an emotion experienced by the many and enjoyed by the few.")
  Quote.create( category: "Love", description: "Love is a choice you make from moment to moment")

  
   # creating for Life quotes
   Quote.create( category: "Life", description: "You will face many defeats in life, but never let yourself be defeated")
   Quote.create( category: "Life", description: "One person with CONVICTION is worth more than one hudred with only an interest")
   Quote.create( category: "Life", description: "Remember true character is revealed by what is on the inside")
   Quote.create( category: "Life", description: "I long to accomplish a great and noble task, but it is my chief duty to accomplish small task as if they were great and noble")

   # creating for Hope quotes
   Quote.create( category: "Hope", description: "The only impossible journey is the one you never begin.")
   Quote.create( category: "Hope", description: "We must accept finite disappointment, but never lose infinite hope")
   Quote.create( category: "Hope", description: "Let your hopes, not your hurts, shape your future.")
   Quote.create( category: "Hope", description: "Courage is like love; it must have hope for nourishment.")

   # creating for depression quotes
   Quote.create( category: "Depression", description: "You are strong for surviving")
   Quote.create( category: "Depression", description: "You are enough,You have enough, You do enoug")
   Quote.create( category: "Depression", description: "Stay strong,Your story isn't over yet")
   Quote.create( category: "Depression", description: "The sun is a daily reminder that we too can rise again from the darkness, that we too can shine our own light")


   # puts "Creating comments..."

 15.times do 
    user_ids = User.all.map {|user| user.id}
    quote_ids = Quote.all.map {|quote| quote.id}
    
    Comment.create(
        user_id: user_ids[rand(0..4)],
        quote_id: quote_ids[rand(0..4)],
        star_rating: rand(1..10),
        comment: Faker::Lorem.sentence(word_count: rand(1...10))
    )
end
puts "✅ Done seeding!"