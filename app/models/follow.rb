class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :chapter
  validates_uniqueness_of :user_id, :scope => [:chapter_id]
end
