module AdventureExplorer.Data.Messages where

import AdventureExplorer.Types.User

locationDescriptions :: Time -> [String]
locationDescriptions Morning = 
  [ "It looks like a swamp. It stinks like a thousand socks. Even though the sun can't filter through the trees, the temperature is hot and steamy. The water is putrid and disgusting. The remains of a - long abandoned - small wooden cabin send a clear message: this place is not fit for human noses.\n" 
  , "The sun shines, the sky is blue, the sea in front of you whispers gently. The jungle is opening up to the ocean and a nice white-sand beach caresses the crystalline waters. A few tiny turtles are walking towards the sea.\n"
  , "There is green in every direction, the small clearing you're in is surrounded by giant trees. They must be hundreds of years old, but they seem to pulsate with life. The chirping of the birds is so strong to be almost annoying and you can feel movements in the shadows cast by the large and mossy trunks.\n"
  , "Copious rivers of sweat are dripping down your forehead, the smell of sulfur is strong and burns your nose. You're standing on the mouth of a volcano. You carefully peek into the crater, looking at the molten rock at the bottom. You notice several red cracks on the surface and a few spots where the lava already reached the surface.\n"
  , "Everything is white around you. From the hill where you're standing, you can clearly see the snow covered plain which extends for miles and miles. Your breath is making a small cloud of steam, but the peaceful scenery is warming up your heart and clearing your mind.\n"
  , "You've been captured by a band of vicious pirates. You're lying in a cell inside their boat, next to their cannons, waiting for an opportunity to escape. Suddenly you hear screams and gun fires. Nobody is operating the cannons: it's not the usual plundering. Maybe a mutiny. The fighting has been going on for a while now. You hear the captain scream something, but his accent has been ruined by years of grog. There is one last shot, then silence, then you see the captain falling from the ship, right in front of the closest cannon hole. You decide to chance it: you only live once! You remove your shirt and pee on it until it's wet. You wrap the shirt on the bars and start twisting the wet tissue until the bars open up enough to let you squeeze through. You grab a sword from the ship armory and you cautiously start climbing the ladders to the bridge, grinding your teeth at every screeching noise the old wood is making. There is just one guy alive, surrounded by throwing knives; the captain and his officials did a good job before dying. The survivor is holding his abdomen and bleeding profusely from the gun shot. He looks up at you with a surprised face, before you make his head roll on the floor. The ship is yours and you murmur to yourself: \"Last man standing...\"\n"
  , "After being lost in the forest for quite some time, you decide to climb a tall tree to see better your surroundings. Soon you come across what looks like a giant nest; it's the size of a small house. Four eggs, the size of a troll, are shaking in a corner. You're glad the mom is not home.\n"
  , "There is a sea of sand in every direction. It's been 2 days since the last oasis. Getting that shortcut in the desert wasn't a smart idea after all. You swapped your shiny armour for some black tunic you found on a rotten corpse. There is a day of walking in the sun ahead of you.\n"
  , "You're walking at dawn when you see a gothic castle in the distance. You sit on the ground to contemplate its beauty, thinking about how lucky you are to live in such a picturesque and adventure-filled world.\n"
  , "You're sitting in front of a strange, glowing pond. Every time you walk towards it, you start hearing angels singing melodies. The water looks very clean despite several old-looking swans cruising happily over it. Between the reeds, there is a long wooden table supporting a long line of cups, made with different materials. A few feet from the table there is a fully dressed up skeleton holding a half-filled golden cup.\n" 
  , "You're lost in a labyrinth. Tall hedges surround you and you hear someone (or something) crying desperately in the distance. You feel like you've spent an eternity between these tall green walls. You keep on walking.\n"
  ]
locationDescriptions Afternoon = 
  [ "A nefarious swamp is in front of you. You cover your face and walk through the mud. Tall and slimy trees cover the sky. You can hear the rain drizzling over the leaves, but only a few drops reach down.\n" 
  , "A pleasant beach lies in front of your eyes. The sun is getting ready for his last dance on the horizon. The relentless waves claimed half of the beach and you feel a magnetic force pushing you into the sea. You notice a raft on the side of the beach, but it's not in sailing conditions.\n"
  , "You're in a small clearing in the middle of the forest. The sound of cicadas becomes stronger and stronger, singing a convincing lullaby to your tired eyes. While dozing off, you catch a glimpse of some lights in the forest - but a blink later everything is back to normal.\n"
  , "This is not the best time to visit this volcano. You're standing on top of a high rock next to the volcano's crater. Lava started flowing not long ago, leaving you stuck to enjoy the performance. The almost unbearable heat forces you to remove your armour. You stare at a beautiful sunset. Hopefully, it won't be your last.\n"
  , "You're standing on the edge of a forest. Bushes, trees and the ground; everything is covered in snow. You try to clear the ground to find a path through the woods, but you find only mud. You notice some big fresh footsteps and you start following them. After walking for ages in the cold, you notice you completed a loop and you got back to the original tracks you were following. Something hit your head and as you fall you see a white furry man-like creature running away. You wake up with a headache.\n"
  , "After a shipwreck, you're floating aimlessly in the sea. You're thirsty and tired, it's unlikely you'll resist another day. You're just sleeping on what's left of your ship, at the mercy of the sea. You wake up aboard another ship: somebody must have rescued. Strangely enough, nobody is around but a few dead corpses lying on the floor. That's when you notice it. There is a giant marine creature, standing next to the ship; it looks like a giant octopus covered in scales. You stand there like a rabbit in front of a lion - paralysed by fear - but the giant squid waves one of his tentacles as if it were curtsying and disappears into the ocean. You feel like you've been chosen for something.\n"
  , "You were fighting some goblins in a clearing when a giant griffin stroke down from the sky and carried you away. One of the goblins stupidly tried to hang on your leg but couldn't avoid your well-placed kick. Keeping high the honor of your people you decided to pretend to be dead. It worked: the griffin dropped you inside a giant nest and flew away. You notice four eggs moving more and more. Not a good sign.\n"
  , "You're walking in the middle of a desert, step by step, like a mule which refuses to die. You notice a sand storm getting closer and closer. With a grunt of desperation, you drop to your knees and prepare to endure the tempest.\n"
  , "You're exploring a castle on the top of a hill. It looks strangely deserted. You find a good crossbow and a golden helm. After climbing hundreds of stairs, you reach the top of the highest tower. There is no princess, but the view is amazing. You throw away the new helm; it doesn't fit the rest of the outfit.\n"
  , "You've set up a fire camp next to a small pond; this should be enough to cook some of the ducks you caught and warm yourself up from this winter afternoon. While eating, you notice a bleeding swan crawling slowly towards the pond. Before you can do anything, the animal stops and lift its legs up. Readily, several other swans fill the sky and come down, pushing their dead equal into the pond. After a few seconds, the dead swan jumps out of the water like a fish and starts flying. There goes dinner.\n" 
  , "You are in what looks like an intricate hedge maze. A squared rock catches your attention: you walked over it at least three times. Going always right doesn't seem to work, you have a feeling there is some kind of magic activated mechanism which open secret walls and makes everything harder.\n"]
locationDescriptions Night = 
  [ "It's pitch black, your waist is immersed in mud and dirty water and you're desperately trying to slash reeds and remove duckweed from your hands. Your eyes can't pick the details of the scenery quite well and your other senses get stronger. The smell almost makes you puke. You hear wolves howling in the distance. You sense something in the water coming in your direction. You quickly grab a liana and use it to climb on a nearby patch of solid ground. A fish the size of a small kid jumps out of the water, making a loud sound with its jaw.\n"
  , "You're standing between a jungle patch and a sandy beach. You look at the coast on your right, running next to the sea for several miles and ending in a beautiful sea arch. The pale and glowing moon sits on top of the arch like a queen on her throne. The low tide uncovered a large coral reef, one hundred feet from the bank, and you spot a few small figures hunting small fishes and crabs with spears.\n"
  , "In the heart of the forest, the smell of sleeping flowers and trees is intense. It's past midnight and fireflies are moving in groups nearby. You hear small footsteps behind every tree. The stars and the moon cast their rays on a tall grey rock filled with human made carvings. It looks like a language you should know, but the content is indecipherable to you.\n"
  , "You're walking in the dark, checking trees for moss on their trunks to understand where north is. Suddenly a loud noise breaks the peace of the forest and the sky in front of you gets filled with fire. A volcano is erupting right in front of you. After the first shot, red lava starts pouring from the mouth and the smell of ashes becomes stronger. You decide a diversion is in order.\n"
  , "It's freezing and dark. You clear a spot from the snow and try to start a fire: a vain attempt. You can't find your way in the dark. You decide you don't want to die of hypothermia during the night and start walking in circles until the first light of the day.\n"
  , "You're floating in the night on a small raft when you finally saw some lights: it's a ship! Nobody is replying so you decide to board it. The stench of rum, tobacco, and blood hits you. Everybody seems to be dead, at least. The collection of weapons available and a black flag with a skull and bones point to the piratey nature of ship - but it's not like you can afford to be picky. Exploring the ship you find a chest full of gold and a fancy collection of grog. Unfortunately, it seems like the last owner decided to hang himself in his cabin. A gangplank is sticking outside of the ship, a few feet over a swarm of sharks. You sit on the bridge, enjoying the night breeze.\n"
  , "A vicious group of giant spiders has closed on you at moonlight. You're back against a giant oak, perilously standing on a tall cliff. You know it's a dead end, but you don't have an alternative: you start to climb the tree behind you, using your sword as a pickaxe and to fend spiders. You keep looking down; spiders on one side, a big jump into the dark valley below. One of the spiders catches you off guard and bites your leg. You scream in pain and fall. Your last thought goes to your mission, the first and last you're going to fail - as soon as you hit the ground. But that doesn't happen: your fall is slowed down by trees you didn't notice in the darkness and quickly come to a stop. You look up and see three giant eggs standing in front of you. You're in what looks like a bird's nest - if birds were the size of an ogre. You hear a screeching sound behind you and turn, just to see a newborn griffin jumping out of its egg. Your sword pierces its head. A scream in the distance makes you think it wasn't a great idea.\n"
  , "You found a shortcut through the desert. According to the maps, provided by the well-known cartographer Ios, you should be out of here by morning, well before the sun rises. \n"
  , "You're scavenging an old castle for treasures and adventures. You find a few interesting books in a hall which teach a few tricks on how to wear your armour; it's not like you've been wearing one for three decades. Before descending into the dungeon you stop in the kitchen to grab some food: nothing like a good apple to forget the wounds inflicted by enemies. You memorise the spell to banish skeletons from the Living Realm and get ready for some killing action.\n"
  , "It's night and you're walking next to a pond. A gentle breeze is blowing, and frogs fill the air with croaking sounds. Suddenly a wild dog covered in mud jump from a bush and pushes you into the body of water, before running away. You start cursing and get out quickly. You start feeling an itching sensation on your skin as you frantically remove all the pieces of your heavy armour. Your body is covered in blisters and the pain slowly reaches your brain. You start screaming and agonizing in the darkness. Alone.\n" 
  , "You're not sure how you got inside; it was looking like a shortcut in the forest, but the trees and bushes started becoming more and more regular - until you had no doubts. This labyrinth has to be human made. It was a trap and you fell straight into it. The sun is long gone now and you're alone in the dark, unable to find your way out. You pass next to another dead body - which has been scavenged several times already - hoping you won't be the next one.\n"]
signDescriptions :: [String]
signDescriptions = 
  [ "You notice a big sign which says:\n" 
  , "You look for more information on this place, but you don't see much. After a while, you notice a writing on the ground:\n"
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
  , "This is the most glorious self-portrait ever.\n"
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
  [ "It's a box full of weird and apparently random stuff: a teapot, a leash, three red balls, an orange way over its expiry date and a rubber chicken with a pulley in the middle.\n"
  , "It contains everything necessary to create adventures and sophisticated campaigns that blur the fine line between simulation and reality.\n"
  , "The box has an advanced security system which requires three numbers in order to open. You input a triple six and unlock the box. A powerful light comes out of it. The content is glowing so strongly that you can't see what's inside. It's what you think it is and you're happy.\n"  
  , "It's stuffed with women's clothes. A dagger covered in blood has been hidden inside a corset.\n"
  , "There are several boxes, one inside another. Nine levels deep, the box become so small that you can't open it.\n"
  , "You open the box only to find out it's full of sticks and circles made of wood.\n" ]
spellBookDescriptions :: [String]
spellBookDescriptions = 
  [ "You steal the spells book. You can't wait to try them.\n" 
  , "The spells are now under your command. A sinister laugh you don't recognize comes out of your throat.\n" 
  , "The spells book chose you. You feel like your will power is melting and you start losing control of your actions.\n"
  , "You open the spells book and glance at the glowing pages. This is your brush and the world is your canvas.\n"
  , "As soon as you grab the spells book, you become enlightened. Magic is nothing but selecting an alternate reality, from one of the infinite parallel universes, where matter behaved in the desired way.\n"
  , "You pick up the book and notice the cover is coming off. This is just a manual on how to influence the universe.\n" 
  , "As soon as you touch the spells book, the sky darkens and a thunderstorm begins to form. Luckily, you don't believe in fairy tales, you grab the book and walk away whistling.\n" ]
sleepDescriptions :: [String]
sleepDescriptions = 
  [ "You plant your tent and go to sleep.\n"
  , "You try to stay awake for a few more minutes, but Morpheus has already put his hands on you.\n" 
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
  , "Hmm, is it a typo?\n"
  , "It doesn't work like this.\n" ]
gotoDescriptions :: [String]
gotoDescriptions = 
  [ "You go to "
  , "You happily go to " 
  , "You end up going to "]
waitDescriptions :: [String]
waitDescriptions = 
  [ "You wait"
  , "You chill" 
  , "You count the clouds" 
  , "You catch some flies" 
  , "You think about life" 
  , "You enjoy your time"
  , "You do a few push-ups"]