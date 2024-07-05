class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:confirmable
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
