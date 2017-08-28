puts "Cleaning seed"

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
  last_name: 'Pacquement',
  sex: 'Homme',
  age: 23,
  description: 'Sosie de Pierre Niney. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. ',
  email: 'lp@gmail.com',
  password: '123soleil'
  })
leo.save!

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

ecume_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite! orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."*10,



# -----------------------    BOOKS

ecume = Book.new ({
  title: "L'écume des nuits",
  summary: "The Dark Side of l'écume des jours",
  category: 'Fantastique'
  })
ecume.user = boris
ecume.save!

tendre_est_la_nuit = Book.new ({
  title: 'Tendre est la nuit',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Romance'
  })
tendre_est_la_nuit.user = pierre
tendre_est_la_nuit.save!


comment_perdre_sa_tete = Book.new ({
  title: 'Comment perdre sa tête',
  summary: "Comment perdre sa tête",
  category: 'Biographie'
  })
comment_perdre_sa_tete.user = ida
comment_perdre_sa_tete.save!

coder_ou_respirer = Book.new ({
  title: 'Coder ou respirer',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit.",
  category: 'Romance'
  })
coder_ou_respirer.user = leo
coder_ou_respirer.save!

# -----------------------    CHAPTERS

ecume_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

chapter_1 = Chapter.new({
  title: 'Chapter 1: Début de la fin',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10

  })
ecume_chapter_1.book = ecume
ecume_chapter_1.save!

chapter_1_tendre_est_la_nuit = Chapter.new({
  title: 'Chapter 1: Début de la fin',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })
chapter_1_tendre_est_la_nuit.book = tendre_est_la_nuit
chapter_1_tendre_est_la_nuit.read_count = 768
chapter_1_tendre_est_la_nuit.save!

chapter_2_tendre_est_la_nuit = Chapter.new({
  title: 'Chapter 2: Retour vers le futur',
  content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite! orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."*10,
  })
chapter_2_tendre_est_la_nuit.book = tendre_est_la_nuit
chapter_2_tendre_est_la_nuit.read_count = 468
chapter_2_tendre_est_la_nuit.save!

chapter_3_tendre_est_la_nuit = Chapter.new({
  title: 'Chapter 3: Bien le bonjour!',

  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eleifend metus vel rhoncus efficitur. Mauris tortor lacus, sollicitudin ac orci fermentum, consectetur ornare nisl. Proin vel suscipit elit. In eget risus feugiat, vehicula magna vel, malesuada erat. Nulla egestas ante vel metus vehicula, vel sagittis mauris elementum. Duis vel bibendum lacus. Cras lobortis enim lorem, in dignissim metus gravida non. Nullam finibus dictum nibh ac commodo. Proin faucibus lacinia dolor, dapibus pellentesque odio hendrerit nec. Nam et ultrices tortor. Suspendisse eget magna augue. Sed imperdiet aliquet sagittis. Nam aliquet ac ex et iaculis. Donec eu urna tincidunt, volutpat lorem in, lacinia augue. Suspendisse ultricies suscipit feugiat. Quisque mattis pharetra vestibulum.
Suspendisse potenti. Vivamus volutpat metus a elit sagittis, id molestie est maximus. Integer tempus a purus sed consectetur. Nam purus urna, malesuada nec ligula nec, mollis congue diam. Ut eget dui sodales, convallis mauris nec, sollicitudin turpis. Suspendisse ut fermentum mauris, vitae lacinia ipsum. Mauris pharetra cursus tincidunt. Duis commodo dapibus nunc, eget vestibulum nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec sodales vel nisl at ultricies. Proin quis eros vitae erat efficitur varius. Proin at imperdiet odio, et aliquam felis. Aliquam molestie lacus in turpis pulvinar feugiat.
Donec consequat tellus sed est accumsan elementum. Fusce pharetra facilisis sem ut cursus. Morbi dictum placerat est, in lacinia enim porttitor non. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut vestibulum volutpat ipsum, ut suscipit nisi porttitor non. Vivamus blandit tortor leo, vitae feugiat tellus lobortis vel. Vestibulum consectetur arcu odio, quis facilisis nisl vehicula non. Suspendisse condimentum massa quis sapien facilisis finibus. Cras urna lectus, molestie ac blandit id, blandit quis felis. In hac habitasse platea dictumst. In ac ante et leo tristique porttitor. Aliquam eleifend justo sed magna egestas, eu egestas magna euismod. Praesent quis dolor fermentum, laoreet enim a, porttitor felis. Mauris id est bibendum, cursus arcu in, commodo magna. Aliquam erat volutpat.
In tristique urna nunc, non varius augue mollis ut. Donec dolor velit, molestie vel aliquet id, viverra in augue. Nulla fermentum sodales ornare. Integer rhoncus scelerisque mi vitae maximus. Sed nec nunc et diam mattis interdum. Nullam pretium purus vel tortor pharetra, non bibendum erat ornare. Morbi ornare ipsum dui, et fermentum dui facilisis et. Nam convallis vestibulum nibh ut dictum. Quisque hendrerit arcu eu porta venenatis. Mauris lectus est, sodales non eleifend at, fringilla ac erat. Morbi lacinia suscipit fermentum. Duis gravida hendrerit enim, vel mollis ipsum pharetra et. Sed sit amet lectus in orci convallis varius.
Praesent ullamcorper purus eget lacus fermentum feugiat. Mauris eleifend dictum enim vel lobortis. Aliquam erat volutpat. Proin sed placerat nulla. Phasellus congue neque felis, aliquet suscipit mauris tristique vel. Mauris dui nibh, euismod volutpat ipsum ac, molestie scelerisque ipsum. Aenean ultricies fermentum urna, in molestie orci feugiat non. Nunc a convallis turpis.'
  })
chapter_3_tendre_est_la_nuit.book = tendre_est_la_nuit
chapter_3_tendre_est_la_nuit.read_count = 168
chapter_3_tendre_est_la_nuit.save!


review_1 = Review.new ({
  content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite! orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."*10,
  })
review_1.user = leo
review_1.chapter = chapter_1
review_1.save!

review_2 = Review.new ({
  content: "J'ai détesté, pourquoi avoir tué le personnage principal dès la troisième ligne ? Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."*10,
  })
review_2.user = bob
review_2.chapter = chapter_1
review_2.save!


follow_1 = Follow.new
follow_1.user = pierre
follow_1.chapter = ecume_chapter_1
follow_1.save!

review_1 = Review.new
review_1.content = "Incroyable, c'est une révélation."
review_1.user = pierre
review_1.chapter = ecume_chapter_1
review_1.save!


chapter_4 = Chapter.new({
  title: 'Chapter 1',
  content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite! orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."*10,
  })
chapter_4.book = comment_perdre_sa_tete
chapter_4.save!

chapter_5 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10,
  })
chapter_5.book = comment_perdre_sa_tete
chapter_5.save!

chapter_6 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10
  })
chapter_6.book = comment_perdre_sa_tete
chapter_6.save!

# -----------------------    REVIEWS

review_1 = Review.new ({
  content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite! orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  })
review_1.user = leo
review_1.chapter = chapter_1_tendre_est_la_nuit
review_1.save!

review_2 = Review.new ({
  content: "J'ai détesté, pourquoi avoir tué le personnage principal dès la troisième ligne ? Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  })
review_2.user = bob
review_2.chapter = chapter_1_tendre_est_la_nuit
review_2.save!

review_3 = Review.new
review_3.content = "Incroyable, c'est une révélation."
review_3.user = pierre
review_3.chapter = ecume_chapter_1
review_3.save!


# -----------------------    FOLLOWS

follow_1 = Follow.new
follow_1.user = pierre
follow_1.chapter = ecume_chapter_1
follow_1.save!

chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10
  })

chapter_1.book = comment_perdre_sa_tete
chapter_1.save!

chapter_2 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10
  })


follow_2 = Follow.new
follow_2.user = leo
follow_2.chapter = ecume_chapter_1
follow_2.save!


follow_3 = Follow.new
follow_3.user = leo
follow_3.chapter = chapter_2_tendre_est_la_nuit
follow_3.save!

chapter_3 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'*10
  })


follow_4 = Follow.new
follow_4.user = leo
follow_4.chapter = chapter_4
follow_4.save!

#-------

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


les_hemorroides_de_napoleon = Book.new ({
  title: 'Les Hemorroides de Napoleon',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Fantastique'
  })

les_hemorroides_de_napoleon.user = lana
les_hemorroides_de_napoleon.save!

#-------

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

zorro = Book.new ({
  title: 'Zorro',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Fantastique'
  })

zorro.user = arnaud
zorro.save!

#-------

jojo = User.new ({
  first_name: 'Jojo',
  last_name: 'Jojo',
  sex: 'Homme',
  age: 23,
  description: 'Jeune écrivain talentueux',
  email: 'jojo@gmail.com',
  password: '123soleil'
  })

jojo.save!

hey_hey = Book.new ({
  title: 'Hey Hey',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Science-fiction'
  })

hey_hey.user = jojo
hey_hey.save!

puts "Seed complete"
