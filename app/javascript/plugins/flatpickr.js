import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  minDate: "today"
}, "#booking_start_at", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#booking_end_at"})]
})
