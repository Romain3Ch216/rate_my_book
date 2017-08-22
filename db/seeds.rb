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

ecume = Book.new ({
  title: "L'écume des nuits",
  summary: "The Dark Side of l'écume des jours",
  category: 'Fantastique'
  })
ecume.user = boris
ecume.save!

ecume_chapter_1 = Chapter.new({
  title: 'Chapter 1',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  })

ecume_chapter_1.book = ecume
ecume_chapter_1.save!

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

follow_1 = Follow.new
follow_1.user = pierre
follow_1.chapter = ecume_chapter_1
follow_1.save!
puts "Seed complete"
