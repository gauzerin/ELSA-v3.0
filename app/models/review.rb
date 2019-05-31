class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hostel

  validates :emoji, presence: true
end
