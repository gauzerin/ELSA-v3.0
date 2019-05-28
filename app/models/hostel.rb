class Hostel < ApplicationRecord
  belongs_to :user
  has_many :beds, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
