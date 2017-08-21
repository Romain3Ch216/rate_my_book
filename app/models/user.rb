class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :books
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :age, :sex, :description, presence: true
end
