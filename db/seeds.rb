puts "Cleaning seed"

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

tendre_est_la_nuit = Book.new ({
  title: 'Tendre est la nuit',
  summary: "Romance sur la côte d'azur pendant les années folles",
  category: 'Romance'
  })

tendre_est_la_nuit.user = pierre

tendre_est_la_nuit.save!

chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_1.book = tendre_est_la_nuit
chapter_1.save!

chapter_2 = Chapter.new({
  title: 'Chapter 2',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_2.book = tendre_est_la_nuit
chapter_2.save!

chapter_3 = Chapter.new({
  title: 'Chapter 3',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

chapter_3.book = tendre_est_la_nuit
chapter_3.save!


#----------

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
