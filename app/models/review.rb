class Review < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
end
