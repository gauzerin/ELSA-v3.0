class Booking < ApplicationRecord
  belongs_to :user

  validate :end_must_be_after_start
  validates :start_at, :end_at, presence: true
  validates :beds, presence: true

  # def beds
  #   Bed.where(slug: attributes[:beds].map { |bed_id| bed_id.to_i })
  # end


private

  def end_must_be_after_start
    return if end_at.blank? || start_at.blank?

    if end_at < start_at
      # notice.add(notice: "Your stay must end after the start date")
      errors.add(:end_at, "Your stay must end after the start date")
    end
  end
end
