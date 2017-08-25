module ApplicationHelper
  def dynamic_category(category)
    books = Book.where(category: category).sample(3)
  end
end
