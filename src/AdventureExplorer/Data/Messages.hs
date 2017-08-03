module AdventureExplorer.Data.Messages where

import AdventureExplorer.Types.User

locationDescriptions :: Time -> [String]
locationDescriptions Morning = 
  [ "It looks like a swamp. It stinks like a thousand socks. Even though the sun can't filter through the trees, the temperature is hot and steamy. The water is putrid and disgusting. The remains of a - long abandoned - small wooden cabin send a clear message: this place is not fit for human noses.\n" 
  , "The sun shines, the sky is blue, the sea in front of you whispers gently. The jungle is opening up to the ocean and a nice white-sand beach caress the crystalline waters. A few tiny turtles are walking towards the sea.\n"
  , "There is green in every direction, the small clearing you're in is surrounded by giant trees. They must be hundreds of years old but they seem to pulsate with life. The chirping of the birds is so strong to be almost annoying and you can feel movements in the shadows cast by the large and mossy trunks.\n"
  , "Copious rivers of sweat are dripping down your forehead, the smell of sulfur is strong and burns your nose. You're standing on the mouth of a volcano. You carefully peek into the crater, looking at the molten rock on the bottom. You notice several red cracks on the surface and a few spots where the lava already reached the surface.\n"
  , "Peaceful snowy hill surrounded by mountain\n"
  , "Ship\n"
  , "Moon\n"
  , "Giant nest\n"
  , "Desert\n"
  , "Castle on top of the mountain\n"
  , "Pond with elixir of life\n" 
  , "Labyrinth\n"]
locationDescriptions Afternoon = 
  [ "A nefarious swamp is in front of you. You cover your face and walk through the mud. Tall and slimy trees cover the sky. You can hear the rain drizzling over the leaves, but only a few drops reach down.\n" 
  , "A pleasant beach lies in front of your eyes. The sun is getting ready for his last dance on the horizon. The relentless waves claimed half of the beach and you feel a magnetic force pushing you into the sea. You notice a raft on the side of the beach, but it's not in sailing conditions.\n"
  , "You're in a small clearing in the middle of the forest. The sound of cicadas becomes stronger and stronger, singing a convincing lullaby to your tired eyes. While dozing off, you catch a glimpse of some lights in the forest - but a blink later everything is back to normal.\n"
  , "Volcano\n"
  , "Peaceful snowy hill surrounded by mountains\n"
  , "Ship\n"
  , "Moon\n"
  , "Giant nest\n"
  , "Desert\n"
  , "Castle on top of the mountain\n"
  , "Pond with elixir of life\n" 
  , "Labyrinth\n"]
locationDescriptions Night = 
  [ "It's pitch black, your waist is immersed in mud and dirty water and you're desperately trying to slash reeds and remove duckweed from your hands. Your eyes can't pick the details of the scenery quite well and your other senses get stronger. The smell almost make you puke. You hear wolves howling in the distance. You sense something in the water coming in your direction. You quickly grab a liana and use it to climb on a nearby patch of solid ground. A fish the size of a small kid jumps out of the water making a loud sound with its jaw.\n"
  , "You're standing between a jungle patch and a sandy beach. You look at the coast on your right, running next to the sea for several miles and ending in a beautiful sea arch. The pale and glowing moon sits on top of the arch like a queen on her throne. The low tide uncovered a large coral reef, one hundred feet from the bank, and you spot a few small figures hunting small fishes and crabs with spears.\n"
  , "In the heart of the forest, the smell of sleeping flowers and trees is intense. It's past midnight and fireflies are moving in groups nearby. You hear small footsteps behind every tree. The stars and the moon cast their rays on a tall grey rock filled with human made carvings. It looks like a language you should know but the content is undecipherable to you.\n"
  , "Volcano\n"
  , "Peaceful snowy hill surrounded by mountains\n"
  , "Ship\n"
  , "Moon\n"
  , "Giant nest\n"
  , "Desert\n"
  , "Castle on top of the mountain\n"
  , "Pond with elixir of life\n" 
  , "Labyrinth\n"]
signDescriptions :: [String]
signDescriptions = 
  [ "You notice a big sign which says:\n" 
  , "You look for more information on this place but you don't see much. After a while, you notice a writing on the ground:\n"
  , "Maybe you're going crazy, maybe it's a weird echo, but there is a voice repeating:\n"
  , "There is a small piece of wood on the ground. A message has been carved into it and filled with blood:\n"]
directionSignDescriptions :: [String]
directionSignDescriptions = 
  [ "You see a bunch of signs with some directions.\n" 
  , "There is a small but dense network of roads which bring to different locations. A helpful sign is next to each road.\n"
  , "A set of strings with different tags is lying on the ground. Each string will bring you to a specific location.\n" ]
spellBookFoundDescriptions :: [String]
spellBookFoundDescriptions = 
  [ "There is a weird glowing book. It's surely full of spells and it seems to embody the very essence of this place.\n"
  , "You notice a book with some symbols you don't recognize. As you get closer a sea of voices start to creep into your head, louder and louder - until you pick the book up.\n"
  , "A book attracts your attention. It's covered in red leather and the cover has a mark which looks like a pyramid with one eye.\n"]
pictureDescriptions :: [String]
pictureDescriptions = 
  [ "It's a beautiful picture.\n"
  , "This is horrifying.\n"
  , "Modern art.\n"
  , "I don't understand what this is supposed to  mean.\n"
  , "I'm pretty sure the author threw it away.\n"
  , "This is the most glorious self portrait ever.\n"
  , "It's the representation of a dog, dressed up like a 1700 nobleman.\n"
  , "This looks like a treasure map. Boring.\n"
  , "This looks like a drawing a 4-year-old would make.\n" ]
bookDescriptions :: [String]
bookDescriptions = 
  [ "It's a weird book written in a language you don't understand.\n"
  , "This is a recipe for a fish pie.\n"
  , "This is another recipe for a fish pie.\n"
  , "If I study this book I'll become a master in how to wear a heavy armour.\n"
  , "It looks like someone's diary.\n"
  , "It's King Alfred officially approved biography. I don't think King Alfred knows how to read.\n"
  , "It looks like an advertising for something.\n" ]
boxDescriptions :: [String]
boxDescriptions = 
  [ "It's a box full of weird and apparently random stuff: a teapot, a leash, three red balls, an orange way over it's expiry date and a rubber chicken with a pulley in the middle.\n"
  , "It contains everything necessary to create adventures and sophisticated campaigns that blur the fine line between simulation and reality.\n"
  , "The box has an advanced security system which requires three numbers in order to open. You input a triple six and unlock the box. A powerful light come out of it. The content is glowing so strongly that you can't see what's inside. It's what you think it is and you're happy.\n"  
  , "It's stuffed with women clothes. A dagger covered in blood has been hidden inside a corset.\n"
  , "There are several boxes one inside another. Nine levels deep, the box become so small that you can't open it.\n"
  , "You open the box only to find out it's full of sticks and circles made of wood.\n" ]
spellBookDescriptions :: [String]
spellBookDescriptions = 
  [ "You steal the spells book. You can't wait to try them.\n" 
  , "The spells are now under your command. A sinister laugh you don't recognize comes out of your throat.\n" 
  , "The spells book chose you. You feel like your willpower is melting and you start losing control of your actions.\n"
  , "You open the spells book and glance at the glowing pages. This is your brush and the world is your canvas.\n"
  , "As soon as you grab the spells book, you become enlightened. Magic is nothing but selecting an alternate reality, from one of the infinite parallel universes, where matter behaved in the desidered way.\n"
  , "You pick up the book and notice the cover is coming off. This is just a manual on how to influence the universe.\n" 
  , "As soon as you touch the spells book, the sky darkens and a thunderstorm begins to form. Luckily you don't believe in fairy tales, you grab the book and walk away whistling.\n" ]
sleepDescriptions :: [String]
sleepDescriptions = 
  [ "You plant your tent and go to sleep.\n"
  , "You try to stay awake for a few more minutes but Morpheus has already put your hands on you.\n" 
  , "After starting a small fire, you prepare your bedroll, tuck yourself in and fall asleep to the sound of fire crackling wood.\n" ]
cantDescriptions :: [String]
cantDescriptions = 
  [ "You can't do that.\n"
  , "That's not what I had in mind.\n"
  , "Seriously, I can't even begin to imagine how you could do that.\n"
  , "NOPE.\n"]
errorDescriptions :: [String]
errorDescriptions = 
  [ "That's not a valid choice.\n"
  , "Mhm, is it a typo?\n"
  , "It doesn't work like this.\n" ]
gotoDescriptions :: [String]
gotoDescriptions = 
  [ "You go to "
  , "You happily go to " 
  , "You end up going to "]