class Booking < ApplicationRecord
  belongs_to :bed
  belongs_to :user
end
