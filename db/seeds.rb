puts "Cleaning seed"

Read.destroy_all
Scroll.destroy_all
Upvote.destroy_all
Follow.destroy_all
Review.destroy_all
Chapter.destroy_all
Book.destroy_all
User.destroy_all

puts "Generating seed"

# -----------------------    USERS

pierre = User.new ({
  first_name: 'Pierre',
  last_name: 'Dutronc',
  sex: 'Homme',
  age: 23,
  description: 'Jeune écrivain talentueux',
  email: 'pierre.dutronc@gmail.com',
  password: '123soleil'
  })
pierre.save!

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1503912359/s4wfw81yyebjrrs52l17.jpg'
boris = User.new ({
  first_name: 'Boris',
  last_name: 'Durand',
  sex: 'Homme',
  age: 29,
  description: 'Ecrivain engagé',
  email: 'boris.durand@gmail.com',
  password: '123soleil'
  })
boris.save!
boris.photo_url = url

bob = User.new ({
  first_name: 'Bob',
  last_name: 'Dupont',
  sex: 'Homme',
  age: 45,
  description: 'Homme en quête de découvertes. ',
  email: 'bd@gmail.com',
  password: '123soleil'
  })
bob.save!

leo = User.new ({
  first_name: 'Leo',
  last_name: 'Niney',
  sex: 'Homme',
  age: 23,
  description: 'Sosie de Pierre Niney. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. ',
  email: 'lp@gmail.com',
  password: '123soleil'
  })
leo.save!

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504188053/duras_qxfstz.jpg'
ida = User.new ({
  first_name: 'Ida',
  last_name: 'Fornebu',
  sex: 'Femme',
  age: 27,
  description: 'Jeune écrivain talentueux',
  email: 'ida@gmail.com',
  password: '123soleil'
  })
ida.save!
ida.photo_url = url

arnaud = User.new ({
  first_name: 'Arnaud',
  last_name: 'Boba',
  sex: 'Homme',
  age: 23,
  description: 'Jeune écrivain talentueux',
  email: 'arnaud@gmail.com',
  password: '123soleil'
  })

arnaud.save!

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504188271/natalie_hk1zvz.jpg'
lana = User.new ({
  first_name: 'Lana',
  last_name: 'Fornebu',
  sex: 'Femme',
  age: 27,
  description: 'Jeune écrivain talentueux',
  email: 'lana@gmail.com',
  password: '123soleil'
})

lana.save!
lana.photo_url = url

100.times {
  user = User.new({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    sex: 'Femme',
    age: '26',
    description: 'lecteur',
    email: Faker::Internet.email,
    password: '123soleil'
    })
  user.save
}


# -----------------------    BOOKS

#--------------------------- Fantastique

ecume = Book.new ({
  title: "L'écume des nuits",
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Fantastique'
  })
ecume.user = boris
ecume.save!

atacama = Book.new ({
  title: "Atacama ou la Vertu de l'Ignorance",
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit.",
  category: 'Fantastique'
  })
atacama.user = leo
atacama.save!

zorro = Book.new ({
  title: "Zorro",
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Fantastique'
  })
zorro.user = arnaud
zorro.save!

#------------------------Romance

tendre_est_la_nuit = Book.new ({
  title: 'Tendre est la nuit',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Romance'
  })
tendre_est_la_nuit.user = pierre
tendre_est_la_nuit.save!

coder_ou_respirer = Book.new ({
  title: 'Coder ou respirer',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit.",
  category: 'Romance'
  })
coder_ou_respirer.user = leo
coder_ou_respirer.save!

londres = Book.new ({
  title: "Londres est une fête",
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit.",
  category: 'Romance'
  })

londres.user = leo
londres.save!

#----------------------------Biographie

racines = Book.new ({
  title: 'Les Racines de la Terre',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Biographie'
  })
racines.user = ida
racines.save!

napoleon = Book.new ({
  title: 'Napoleon, né pour régner',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Biographie'
  })

napoleon.user = lana
napoleon.save!

sylvain = Book.new ({
  title: 'Sylvain, né pour coder',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Biographie'
  })

sylvain.user = lana
sylvain.save!


# -----------------------    CHAPTERS

atacama_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*15
})

atacama_chapter_1.book = atacama
a = (50..99).to_a
n = a.sample + 20
User.all[1,n].each{|user| Read.create(user: user, chapter:atacama_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:atacama_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:atacama_chapter_1, content: '...')}


atacama_chapter_1.save!

atacama_chapter_2 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*15,
})

n = a.sample + 20
atacama_chapter_2.book = atacama
User.all[1,n].each{|user| Read.create(user: user, chapter:atacama_chapter_2, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:atacama_chapter_2)}
Review.create(user: boris, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Review.create(user: lana, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
Review.create(user: ida, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
User.all[0,n-23].each{|user| Review.create(user: user, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')}


atacama_chapter_2.save!

atacama_chapter_3 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*15,
})


atacama_chapter_3.book = atacama

n = a.sample
User.all[1,n].each{|user| Read.create(user: user, chapter:atacama_chapter_3, is_read: true)}
User.all[0,23].each{|user| Follow.create(user: user, chapter:atacama_chapter_3)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:atacama_chapter_3, content: '...')}


atacama_chapter_3.save!

#------------------------------

tendre_est_la_nuit_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

tendre_est_la_nuit_chapter_1.book = tendre_est_la_nuit

n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:tendre_est_la_nuit_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:tendre_est_la_nuit_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:tendre_est_la_nuit_chapter_1, content: '...')}

tendre_est_la_nuit_chapter_1.save!

#-----------------------------------

racines_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

racines_chapter_1.book = racines
n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:racines_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:racines_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:racines_chapter_1, content: '...')}
racines_chapter_1.save!

#------------------------

ecume_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

ecume_chapter_1.book = ecume
n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:ecume_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:ecume_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:ecume_chapter_1, content: '...')}


ecume_chapter_1.save!

#------------------------

zorro_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

zorro_chapter_1.book = zorro
n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:zorro_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:zorro_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:zorro_chapter_1, content: '...')}


zorro_chapter_1.save!

#------------------------

sylvain_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

sylvain_chapter_1.book = sylvain

n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:sylvain_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:sylvain_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:sylvain_chapter_1, content: '...')}


sylvain_chapter_1.save!

#---------------------------------

napoleon_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

napoleon_chapter_1.book = napoleon

n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:napoleon_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:napoleon_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:napoleon_chapter_1, content: '...')}


napoleon_chapter_1.save!

#-------------------------------

londres_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

londres_chapter_1.book = londres

n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:londres_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:londres_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:londres_chapter_1, content: '...')}

londres_chapter_1.save!

#------------------------------------

coder_ou_respirer_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: ''
})

coder_ou_respirer_chapter_1.book = coder_ou_respirer

n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:coder_ou_respirer_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:coder_ou_respirer_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:coder_ou_respirer_chapter_1, content: '...')}

coder_ou_respirer_chapter_1.save!

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504187608/IMG_1479_zs507v.jpg'
romain = User.new ({
  first_name: 'Romain',
  last_name: 'Thoreau',
  sex: 'Homme',
  age: 21,
  description: 'Passionné par la lecture',
  email: 'romain.thoreau@gmail.com',
  password: '123soleil'
  })

romain.save!
romain.photo_url = url
puts "Seed complete"


