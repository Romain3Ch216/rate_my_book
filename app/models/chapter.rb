class Chapter < ApplicationRecord
  belongs_to :book
  has_many :reviews
  has_many :follows
  validates :title, :content, presence: true
end
