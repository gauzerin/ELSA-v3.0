class Booking < ApplicationRecord
  belongs_to :user

  validates :start_at, :end_at, presence: :true

  # def beds
  #   Bed.where(slug: attributes[:beds].map { |bed_id| bed_id.to_i })
  # end

#   def unavailable_dates
#     bookings.pluck(:start_at, :end_at).map do |range|
#       { from: range[0], to: range[1] }
#     end
#   end

# private

#   def end_must_be_after_start
#     return if end_at.blank? || start_at.blank?

#     if end_at < start_at
#       errors.add(:end_at, "Your stay must end after the start date")
#     end
#   end
end
