puts "deleting existing ideas ..."

Idea.destroy_all

puts "creating new travel ideas ..."

Idea.create([
  {
    title: "Exploring the Wonders of Machu Picchu",
    body: "Discover the ancient Incan city of Machu Picchu, nestled in the Andes Mountains. Experience breathtaking views, rich history, and vibrant culture. A must-visit destination for any traveler.",
    url: "https://www.lonelyplanet.com/peru/machu-picchu"
  },
  {
    title: "Safari Adventure in Serengeti National Park",
    body: "Embark on an unforgettable safari in Serengeti National Park. Witness the great migration, diverse wildlife, and stunning landscapes. Perfect for nature lovers and wildlife photographers.",
    url: "https://www.lonelyplanet.com/tanzania/serengeti-national-park"
  },
  {
    title: "Cultural Immersion in Kyoto, Japan",
    body: "Immerse yourself in the rich culture and history of Kyoto. Visit ancient temples, participate in traditional tea ceremonies, and explore beautiful gardens. An enriching experience awaits.",
    url: "https://www.lonelyplanet.com/japan/kyoto"
  },
  {
    title: "Island Hopping in the Philippines",
    body: "Experience the pristine beaches, crystal-clear waters, and vibrant marine life of the Philippines. Perfect for beach lovers and adventure seekers. Island hopping has never been so exciting.",
    url: "https://www.lonelyplanet.com/philippines"
  },
  {
    title: "Exploring the Rich History of Rome, Italy",
    body: "Walk through the streets of Rome and discover the rich history and architectural marvels. From the Colosseum to the Vatican, Rome is a treasure trove for history enthusiasts.",
    url: "https://www.lonelyplanet.com/italy/rome"
  }
])

puts "Ideas have been seeded successfully."