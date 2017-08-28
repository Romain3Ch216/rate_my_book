class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters
  validates :title, :summary, presence: true
  validates :category, inclusion: { in: %w(Policier Science-fiction Fantastique Romance Historique Biographie) }
  has_many :chapters


  def hex_for_category
    case category
    when "Biographie" then 'rgba(246, 201, 201, 1)'
    when "Policier" then 'rgba(145, 167, 208, 1)'
    when "Science-fiction" then 'rgba(182, 159, 191, 1)'
    when "Fantastique" then 'rgba(135, 198, 184, 1)'
    when "Romance" then 'rgba(255, 229, 108, 1)'
    when "Historique" then 'rgba(150, 150, 150, 1)'
    end
  end

  def self.category
    %w(Biographie Policier Science-fiction Fantastique Romance Historique)
  end
end
