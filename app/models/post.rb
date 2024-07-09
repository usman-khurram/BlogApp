class Post < ApplicationRecord
  enum approval_status: { pending: 'pending', approved: 'approved', denied: 'denied' }

  after_initialize :set_default_approval_status, if: :new_record?

  belongs_to :user
  has_many :suggestions, dependent: :destroy
  has_many :reports, as: :reportable, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_one_attached :image

  validates :user, presence: true
  validates :title, :content, presence: true

  private

  def set_default_approval_status
    self.approval_status ||= 'pending'
  end
end
