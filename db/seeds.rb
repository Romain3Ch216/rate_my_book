puts "Cleaning seed"

Follow.destroy_all
Review.destroy_all
Chapter.destroy_all
Book.destroy_all
User.destroy_all



puts "Generating seed"

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

leo = User.new ({
  first_name: 'leo',
  last_name: 'Toto',
  sex: 'Homme',
  age: 253,
  description: 'Jeune homme curieux qui aime lire et décourvrir de nouvelles oeuvres',
  email: 'lp@gmail.com',
  password: '123soleil'
  })

leo.save!

tendre_est_la_nuit = Book.new ({
  title: 'Tendre est la nuit',
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
  category: 'Romance'
  })

tendre_est_la_nuit.user = pierre

tendre_est_la_nuit.save!

chapter_1 = Chapter.new({
  title: 'Chapter 1: Début de la fin',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })
chapter_1.book = tendre_est_la_nuit

chapter_1.read_count = 768
chapter_1.save!

chapter_2 = Chapter.new({
  title: 'Chapter 2: Retour vers le futur',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })
chapter_2.book = tendre_est_la_nuit
chapter_2.read_count = 468
chapter_2.save!

chapter_3 = Chapter.new({
  title: 'Chapter 3: Bien le bonjour!',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })
chapter_3.book = tendre_est_la_nuit
chapter_3.read_count = 168
chapter_3.save!


# review_1 = Review.new ({
#   content: "Super chapitre, j'adore. J'ai hâte de découvrir la suite!",
#   })
# review_1.user = leo
# review_1.chapter = chapter_1
# review_1.save!


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

comment_perdre_sa_tete = Book.new ({
  title: 'Comment perdre sa tête',
  summary: "Comment perdre sa tête",
  category: 'Biographie'
  })

comment_perdre_sa_tete.user = ida

comment_perdre_sa_tete.save!

chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_1.book = comment_perdre_sa_tete
chapter_1.save!

chapter_2 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_2.book = comment_perdre_sa_tete
chapter_2.save!

chapter_3 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_3.book = comment_perdre_sa_tete
chapter_3.save!

#----------

ida = User.new ({
  first_name: 'Ida',
  last_name: 'Fornebu',
  sex: 'Femme',
  age: 27,
  description: 'Jeune écrivain talentueux',
  email: 'john@gmail.com',
  password: '123soleil'
  })

ida.save!

comment_perdre_sa_tete = Book.new ({
  title: 'Comment perdre sa tête',
  summary: "Comment perdre sa tête",
  category: 'Biographie'
  })

comment_perdre_sa_tete.user = ida

comment_perdre_sa_tete.save!

chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_1.book = comment_perdre_sa_tete
chapter_1.save!

chapter_2 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_2.book = comment_perdre_sa_tete
chapter_2.save!

chapter_3 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_3.book = comment_perdre_sa_tete
chapter_3.save!

puts "Seed complete"
