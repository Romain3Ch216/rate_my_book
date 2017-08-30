class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :books
  has_many :follows
  has_many :reviews
  has_many :upvotes
  has_many :scrolls
  has_many :reads
  has_many :upvoted_reviews, through: :upvotes, source: :review

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :age, :sex, :description, presence: true
  has_attachment :photo

  def began_first_chapter?(book)
    !scrolls.where(chapter: book.chapters.first).empty?
  end

  def read_last_chapter?(book)
    reads.where(chapter: book.chapters.last).first.is_read == true
  end

  def chapter_unread(book)
    book.chapters.find{ |chapter| chapter.reads.where(user: self).first.is_read == false }
  end

end
