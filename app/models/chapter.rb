class Chapter < ApplicationRecord
  belongs_to :book
  has_many :reviews
  has_many :follows
  has_many :scrolls
  has_many :reads
  validates :title, :content, presence: true
end
