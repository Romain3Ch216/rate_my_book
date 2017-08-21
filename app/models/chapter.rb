class Chapter < ApplicationRecord
  belongs_to :book
  has_many :reviews
  validates :title, :content, presence: true
end
