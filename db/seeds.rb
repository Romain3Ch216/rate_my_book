puts "Cleaning seed"

User.destroy_all
Book.destroy_all
Chapter.destroy_all

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
  summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse felis nisi, pretium sit amet mauris vel, bibendum lobortis ante. Maecenas vel fringilla elit. Donec vitae odio quis elit imperdiet bibendum vel et odio. Mauris lacinia nisi non magna suscipit sagittis. Etiam maximus sodales ex, ut tristique lacus feugiat euismod.",
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

puts "Seed complete"
