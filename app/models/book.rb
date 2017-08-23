class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters
  validates :title, :summary, presence: true
  validates :category, inclusion: { in: %w(Policier Science-fiction Fantastique Romance Historique Biographie) }
  has_many :chapters


  def hex_for_category
    case category
    when "Policier" then 'rgba(145, 167, 208, 0)'
    when "Science-fiction" then 'rgba(182, 159, 191, 0)'
    when "Fantastique" then 'rgba(135, 198, 184, 0)'
    when "Romance" then 'rgba(255, 229, 108, 0)'
    when "Historique" then 'rgba(150, 150, 150, 0)'
    when "Biographie" then 'rgba(246, 201, 201, 0)'

    end
  end
end
