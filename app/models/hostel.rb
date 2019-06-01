class Hostel < ApplicationRecord
  belongs_to :user
  has_many :beds, dependent: :destroy
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # def number_of_beds(room_type)
  #   case room_type
  #   when "10-bed"
  #     10
  #   when "8-bed"
  #     8
  #   when "6-bed"
  #     6
  #   when "4-bed"
  #     4
  #   when "private"
  #     1
  #   end
  # end

end
