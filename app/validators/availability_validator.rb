class AvailabilityValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    bookings = Booking.where(["beds =?", record.beds]) # add iteration to access beds array , (.map?)
    date_ranges = bookings.map { |b| b.start_at..b.end_at }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "not available")
      end
    end
  end
end
