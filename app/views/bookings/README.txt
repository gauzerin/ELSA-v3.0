README.txt

1. Create working routes x.co/hostels
2. Create working show page x.co/hostels/id
3. Create access to beds in show hostels. x.co/hostels/id
4. Show all available bed_types in that hostel under x.co/hostels/id
5. Display bed price for each bed type
6. Display drop down with available beds to book
7. Validates selection was made. Redirect to booking page and pass info from points 3-6 to booking from (hostel_id, bed_type, price, beds selected (array of bed_id)).
8. Compute total_cost and pass it with the form.
9. Pass this to stripe.
10. If test transaction successfull redirec the user to hostel.
