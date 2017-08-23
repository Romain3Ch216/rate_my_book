class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters
  validates :title, :summary, presence: true
  validates :category, inclusion: { in: %w(Policier Science-fiction Fantastique Romance Historique Biographie) }
  has_many :chapters

  def hex_for_category
    case category
    when "Policier" then '#91A7D0'
    when "Science-fiction" then '#B69FBF'
    when "Fantastique" then '#87C6B8'
    when "Romance" then '#FFE56C'
    when "Historique" then '#969696'
    when "Biographie" then '#F6C9C9'
    end
  end
end
