class Booking < ApplicationRecord
  belongs_to :user

  def beds
    @beds = Bed.where(slug: attributes[:beds].map {|bed_id| bed_id.to_i})
  end
end
