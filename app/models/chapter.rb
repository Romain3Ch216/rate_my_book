class Chapter < ApplicationRecord
  belongs_to :book
  validates :title, :content, presence: true
end
