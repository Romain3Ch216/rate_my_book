class Review < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
  has_many :upvotes
  # validates :content, presence: true pour la demo
end
