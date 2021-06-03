lists = [
    {name: "30 Things To Do Before You Turn 30",
    description: "Whether you've got 10 years or 10 weeks until you hit that life-affirming 3-0 milestone, here are the bucket-list entries you should make (and keep) before you get there.",
    to_do: "Travel solo, Learn a new skill, Master cooking at least 3 dishes, Run a half marathon, Go skinny dipping, Speak another language, Learn how to read a wine list, Throw yourself a birthday party, Get private health insurance, Begin investing, Travel to a place where you don't know the language, Eat at a restaurante alone, Go camping, Learn to meditate, Learn about politics, Take a roadtrip, Pay off your debits, Have a fancy dining experience, Volunteer for a cause you believe in, Live abroad, Do something that scares you, Find a sports that you love practice, Start a hobby that will challenge you, Learn how to budget, Find a mentor, Have savings, Start and finish an educational course, Start your dream business or job, Learn to drive, Watch a live comedy show",
    image: "https://cf.shopee.co.th/file/1001f619a3e53206d0f8069bcf02050d",
    user_id: 2},

    {name: "Top 50 Best Places in The World",
    description: "What's on your travel bucket list? If you're like most people, the more you travel, the more places you add to your bucket list. No matter how many places are on your bucket list, this ranking will get you dreaming of places near and far.",
    to_do: "Bali (Indonesia), New Orleans (USA), Kerry (Ireland), Marrakesh (Morocco), Sydney (Australia), The Maldives, Paris (France), Cape Town (South Africa), Dubai (UAE), Bora Bora (French Polynesia), New York (USA), Dubrovnik (Croatia), Edinburgh (Scotland), Rome (Italy), Paro Valley (Bhutan), Jaipur (India), Waikato (New Zealand), Havana (Cuba), Tokyo (Japan), Antarctica, Vancounver (Canada), Los Angeles (USA), Kruger National Park (South Africa), Santorini (Greece), Moscow (Russia), Singapore, London (England), Rio de Janeiro (Brazil), Petra (Jordan), Hong Kong, Barbados, Amsterdam, Santiago (Chile), Cairo (Egypt), Copenhagen (Denmark), Seoul (Korea), Laucala Island Resort (Fiji), Providencia (Columbia), Machu Picchu (Peru), Virunga National Park (Democratic Republic of Congo), Lisbon (Portugal), Hanoi (Vietnam), Hawaii (USA), Ibiza (Spain), Beijing (China), Budapest (Hungary), Cinque Terre (Italy), Buenos Aires (Argentina), Las Vegas (USA), Matterhorn (Switzerland)",
    image: "https://www.gavelintl.com/wp-content/uploads/2019/05/tokyo-japan.jpg",
    user_id: 3},

    {name: "10 Crazy Things To Do Before You Die",
    description: "Life is the most beautiful gift we have, but you never know how long you have until it’s over. That’s why I’m a big fan of doing things you want to do when you get the chance. Don’t wait for “Tomorrow” or “Someday”. If you get the opportunity today, then do it today.",
    to_do: "Skydiving, Attempt a world record, Scale a mountain, Live on the street, Go zero gravity, Shark cage diving, Take a ride in a hot air balloon, Get in a physical fight, Drive a lamborghini or Ferrari, Experience the Rio de Janeiro carnival",
    image: "https://images.theconversation.com/files/45709/original/s4vpyybw-1396810508.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop",
    user_id: 1},

    {name: "Big Audacious Goals",
    description: "Once you start making the completion of your goals the purpose of your life, your focus and lifestyle get dramatically better!",
    to_do: "Become a published author, Start a company, Run a marathon, Buy a same-day plane ticket to a foreign country, Learn to fly a plane, Climb Mt. Rainier, Visit every continent, Visit every state in the United States, Be on a talk show, Get six pack abs, Become bilingual, Live in the wilderness for a month, Learn an instrument, Learn self-defense",
    image: "https://assets.website-files.com/5abf6872d0f264292bfb1c2d/5ee9730f9a5ef595824bb21f_What%20is%20the%20easiest%20instrument%20to%20learn%20how%20to%20play%3F.jpg",
    user_id: 4},

    {name: "10 Bucket List Trips for Kids",
    description: "Since there are only so many years when kids will be kids, here are 10 must-take bucket list trips that are perfect for kids and families.",
    to_do: "Spend a week at a ranch, Sail on a Caribbean Cruise, Take a family ski vacation, Camp in a National Park, Go on a rafting adventure, Experience the Holidays in New York City, Embrace the Magic of Walt Disney World, Catch a wave at Surf School, Build a sandcastle at the beach",
    image: "https://www.tripsavvy.com/thmb/pfpeCb_p-cYf3sNWUPNkOWGK5Cc=/1609x1609/smart/filters:no_upscale()/Disneyland_MickeyMinnie_PaulHiffmeyer-56b7da213df78c0b1363bfb3.jpg",
    user_id: 3}

]

lists.each do |list|
    List.create(list)
end

users = [
    {name: "Meg Kahn", email: "meg.kahn@gmail.com", password: "meg123"},
    {name: "William Quinn", email: "william.quinn@gmail.com", password: "wil123"},
    {name: "Victoria Brock", email: "victoria.brock@gmail.com", password: "vic123"},
    {name: "Nathan Kennedy", email: "nathan.kennedy@gmail.com", password: "nat123"}
]

users.each do |user|
    User.create(user)
end