require_relative "/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/app/models/question.rb"

  a = Question.create(question:"Who painted Girl With Red Balloon" ,answer:"Banksy",category:"Art")
  a = Question.create(question:"Who painted Dora Maar" ,answer:"Picasso",category:"Art")
  a = Question.create(question:"Who painted Prodigal Son" ,answer:"Rembrandt",category:"Art")
  a = Question.create(question:"Who painted Lydia Delectorskaya" ,answer:"Matisse",category:"Art")
  a = Question.create(question:"Who painted Tree of Hope" ,answer:"Frida Kahlo",category:"Art")
  a = Question.create(question:"Who painted Tableu I" ,answer:"Mondrian",category:"Art")
  a = Question.create(question:"Who painted Creation of Adam" ,answer:"Michelangelo",category:"Art")
  a = Question.create(question:"Who painted The Birth of Venus" ,answer:"Donatello",category:"Art")
  a = Question.create(question:"Who painted Mona Lisa" ,answer:"Leonardo Da Vinci",category:"Art")
  a = Question.create(question:"Who painted The School of Athens" ,answer:"Raphael",category:"Art")

 a = Question.create(question:"Which party does Andrew Cuomo belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Phil Murphy belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Tom Wolf belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Jerry Brown belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Greg Abott belong to?" ,answer:"R",category:"U.S Governors")
  a = Question.create(question:"Which party does Butch Otter belong to?" ,answer:"R",category:"U.S Governors")
  a = Question.create(question:"Which party does David Ige belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Susana Martinez belong to?" ,answer:"R",category:"U.S Governors")
  a = Question.create(question:"Which party does Larry Hogan belong to?" ,answer:"D",category:"U.S Governors")
  a = Question.create(question:"Which party does Roy Cooper belong to?" ,answer:"D",category:"U.S Governors")

  a = Category.create(category: "U.S Governors")
  a = Category.create(category: "Music")
  a = Category.create(category: "Art")

a = Question.create(question: "Name the artist for Irreplaceable", answer: "Beyonce", category: "Music",
    music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/irreplacable_bey.mp3")
a = Question.create(question: "Name the artist for Born In The USA", answer: "Bruce Springsteen", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/usa_bs.mp3")
a = Question.create(question: "Name the artist for Humble", answer: "Kendrick Lamar", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/humble_kd.mp3")
a = Question.create(question: "Name the artist for Mask Off", answer: "Future", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/mask_off_future.mp3")
a = Question.create(question: "Name the artist for No Tears Left To Cry", answer: "Ariana Grande", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/no_tears_ag.mp3")
a = Question.create(question: "Name the artist for In My Feelings", answer: "Drake", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/in_my_feeling_d.mp3")
a = Question.create(question: "Name the artist for Another Brick In The Wall", answer: "Pink Floyd", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/brick_wall_pf.mp3")
a = Question.create(question: "Name the artist for I wanna dance with somebody", answer: "Whitney Houston", category: "Music",
music_url:"/Users/matthewdizon/Desktop/flatiron/Ruby/Week3/module-one-final-project-guidelines-dumbo-web-100818/music/dance_wh.mp3")
