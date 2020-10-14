class Prototype < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true

  belongs_to :user
end
