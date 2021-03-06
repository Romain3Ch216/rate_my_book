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

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504262186/chinese-man-avatar_e4ihn6.png'
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

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504262186/lana-avatar_ynour4.png'
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

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504262186/black-woman-avatar_aldxuf.png'
lana = User.new ({
  first_name: 'Lana',
  last_name: 'Duras',
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
  summary: "C'est l'histoire d'un jeune homme maladroit, fou amoureux d'une jeune femme maladroite, qui l'invite à danser sur un quart de lune. ",
  category: 'Fantastique'
  })
ecume.user = boris
ecume.save!

atacama = Book.new ({
  title: "Atacama ou la Vertu de l'Ignorance",
  summary: "La folle histoire d'un agent secret chilien en voyage au pays des merveilles. Accompagné de son fidèle compagnon, Diego le Brésilien, une perruche péruvienne, il part déjouer le complot qui vise sa majesté.",
  category: 'Fantastique'
  })
atacama.user = leo
atacama.save!

zorro = Book.new ({
  title: "Zorro",
  summary: "Un chevalier des ténèbres, voilé d'un masque noir et d'une cape aussi sombre que la nuit, écorche d'un grand Z les privilèges de la bourgoisie. ",
  category: 'Fantastique'
  })
zorro.user = arnaud
zorro.save!

#------------------------Romance

tendre_est_la_nuit = Book.new ({
  title: 'Tendre est la nuit',
  summary: "Un été sur la côte d'azur pour Rosemary, jeune étoile montante d'Hollywood, qui rencontre en France Catherine et son mari, de qui elle tombera éperdumment amoureuse.",
  category: 'Romance'
  })
tendre_est_la_nuit.user = pierre
tendre_est_la_nuit.save!

coder_ou_respirer = Book.new ({
  title: 'Coder ou respirer',
  summary: "Sylvain, jeune adolescent passionné par l'informatique, tombe amoureux de sa camarade de classe, Rose. Si certains écrivent des poèmes par amour, lui écrit du code. C'est un code qui vous emménera dans les limbes de Ruby, pour un voyage inoubliable.",
  category: 'Romance'
  })
coder_ou_respirer.user = leo
coder_ou_respirer.save!

londres = Book.new ({
  title: "Londres est une fête",
  summary: "Londres, 1939. Walter rit aux éclats devant la devanture du Mc Laren's. Il est saoul et il est heureux. Demain, il se marie. Le temps est lourd, l'orage gronde.",
  category: 'Romance'
  })

londres.user = leo
londres.save!

#----------------------------Biographie

racines = Book.new ({
  title: 'Les Racines de la Terre',
  summary: "Quand le crépuscule tombe sur les rives du Batha, il ne reste que les oiseaux pour éventrer les flancs du silence.",
  category: 'Biographie'
  })
racines.user = ida
racines.save!

napoleon = Book.new ({
  title: 'Napoleon, la chute du faucon',
  summary: "Le 8 juin 1777, Charles Bonaparte est élu député de la noblesse de Corse. En cette qualité, il fait partie de la députation que l’Assemblée générale des États de la Corse envoie à Versailles auprès du roi Louis XVI. Le 15 décembre 1778, il part pour Versailles où Louis XVI le reçoit en audience une seconde fois, la première rencontre avec le roi datant de 1776.",
  category: 'Biographie'
  })

napoleon.user = lana
napoleon.save!

sylvain = Book.new ({
  title: 'Sylvain, né pour coder',
  summary: "Sylvain code plus vite que son ombre. Le tintement du clavier résonne dans sa chambre dans un grand vacarme. Les pupilles dilatées, le front luisant, il programme le monde de demain, muni d'un chocolat chaud à la main.",
  category: 'Biographie'
  })

sylvain.user = lana
sylvain.save!


# -----------------------    CHAPTERS

atacama_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra viverra purus, sed rhoncus lacus pretium a. Duis elementum augue a lobortis eleifend. Nunc mollis risus tincidunt, hendrerit mauris a, congue augue. Quisque eu lorem ac nisl tristique lobortis. Sed a metus libero. Vivamus sit amet diam nec quam gravida venenatis non sed dui. Nullam convallis justo enim, eget malesuada nisl euismod ut. Nullam eget felis nulla. Donec eu fermentum ligula. Aenean quis nibh risus. In laoreet porta est, eu volutpat risus vulputate dictum. Vivamus vestibulum, nisi faucibus gravida porta, orci nisi ullamcorper erat, et finibus nibh nisi in tellus. In at iaculis lectus, eget sodales elit. Nam commodo ante sapien, et luctus nulla commodo sit amet. Donec justo dolor, lobortis nec ante et, dignissim aliquet justo. '
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
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra viverra purus, sed rhoncus lacus pretium a. Duis elementum augue a lobortis eleifend. Nunc mollis risus tincidunt, hendrerit mauris a, congue augue. Quisque eu lorem ac nisl tristique lobortis. Sed a metus libero. Vivamus sit amet diam nec quam gravida venenatis non sed dui. Nullam convallis justo enim, eget malesuada nisl euismod ut. Nullam eget felis nulla. Donec eu fermentum ligula. Aenean quis nibh risus. In laoreet porta est, eu volutpat risus vulputate dictum. Vivamus vestibulum, nisi faucibus gravida porta, orci nisi ullamcorper erat, et finibus nibh nisi in tellus. In at iaculis lectus, eget sodales elit. Nam commodo ante sapien, et luctus nulla commodo sit amet. Donec justo dolor, lobortis nec ante et, dignissim aliquet justo. '
})

n = a.sample + 20
atacama_chapter_2.book = atacama
User.all[1,n].each{|user| Read.create(user: user, chapter:atacama_chapter_2, is_read: true)}
User.all[0,46].each{|user| Follow.create(user: user, chapter:atacama_chapter_2)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'*3)}
review_1 = Review.create(user: boris, chapter:atacama_chapter_2, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'*3)
User.all[0, n -30].each{|user| Upvote.create(user: user, review: review_1)}
review_2 = Review.create(user: lana, chapter:atacama_chapter_2, content: "Très bon chapitre, je suis absorbée par l'intrigue. Cependant, je ne comprends pas, Carlota n'a fait de mal à personne.")
User.all[0, n -25].each{|user| Upvote.create(user: user, review: review_2)}
review_3 = Review.create(user: ida, chapter:atacama_chapter_2, content: "J'adore le style, l'intrigue est passionnante. L'histoire est vraiment cohérente, je m'identifie très bien au personnage principal. D'ailleurs, j'ai su que Carlota était louche. J'ai demandé la suite sans hésitation en espérant pouvoir vous lire très prochainement.")
User.all[0, n -13].each{|user| Upvote.create(user: user, review: review_3)}

atacama_chapter_2.save!



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
  title: 'Chapter 3 - Au Tchad',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra viverra purus, sed rhoncus lacus pretium a. Duis elementum augue a lobortis eleifend. Nunc mollis risus tincidunt, hendrerit mauris a, congue augue. Quisque eu lorem ac nisl tristique lobortis. Sed a metus libero. Vivamus sit amet diam nec quam gravida venenatis non sed dui. Nullam convallis justo enim, eget malesuada nisl euismod ut. Nullam eget felis nulla. Donec eu fermentum ligula. Aenean quis nibh risus. In laoreet porta est, eu volutpat risus vulputate dictum. Vivamus vestibulum, nisi faucibus gravida porta, orci nisi ullamcorper erat, et finibus nibh nisi in tellus. In at iaculis lectus, eget sodales elit. Nam commodo ante sapien, et luctus nulla commodo sit amet. Donec justo dolor, lobortis nec ante et, dignissim aliquet justo.'
})

racines_chapter_1.book = racines
n = a.sample
User.all[0,n].each{|user| Read.create(user: user, chapter:racines_chapter_1, is_read: true)}
User.all[0,n-11].each{|user| Follow.create(user: user, chapter:racines_chapter_1)}
User.all[0,n-23].each{|user| Review.create(user: user, chapter:racines_chapter_1, content: '...')}
racines_chapter_1.save!

#------------------------

ecume_chapter_1 = Chapter.new({
  title: 'Chapter 8 - La Vague',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras viverra viverra purus, sed rhoncus lacus pretium a. Duis elementum augue a lobortis eleifend. Nunc mollis risus tincidunt, hendrerit mauris a, congue augue. Quisque eu lorem ac nisl tristique lobortis. Sed a metus libero. Vivamus sit amet diam nec quam gravida venenatis non sed dui. Nullam convallis justo enim, eget malesuada nisl euismod ut. Nullam eget felis nulla. Donec eu fermentum ligula. Aenean quis nibh risus. In laoreet porta est, eu volutpat risus vulputate dictum. Vivamus vestibulum, nisi faucibus gravida porta, orci nisi ullamcorper erat, et finibus nibh nisi in tellus. In at iaculis lectus, eget sodales elit. Nam commodo ante sapien, et luctus nulla commodo sit amet. Donec justo dolor, lobortis nec ante et, dignissim aliquet justo.'
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

url = 'http://res.cloudinary.com/dbojzvt5e/image/upload/v1504262989/romain-avatar_irpgha.png'
romain = User.new ({
  first_name: 'Romain',
  last_name: 'Thoreau',
  sex: 'Homme',
  age: 21,
  description: 'Photographe passionné par la lecture',
  email: 'romain.thoreau@gmail.com',
  password: '123soleil'
  })

romain.save!
romain.photo_url = url

Follow.create(user: romain, chapter: ecume_chapter_1)
Follow.create(user: romain, chapter: racines_chapter_1)
Scroll.create(user: romain, chapter: racines_chapter_1, scroll_value: 0)

puts "Seed complete"


