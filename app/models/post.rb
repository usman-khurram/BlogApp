class Post < ApplicationRecord
  belongs_to :user
  has_many :suggestions
  has_many :reports,as: :reportable
  has_many :comments, as: :commentable
  has_many :likes, as: :likeable
  validates :user, presence: true
  has_one_attached :image
end
