class Review < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
  validates :content, presence: true
end
