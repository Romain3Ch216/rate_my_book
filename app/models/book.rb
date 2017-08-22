class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters
  validates :title, :summary, presence: true
  validates :category, inclusion: { in: %w(Policier Science-fiction Fantastique Romance Historique Biographie) }

end
