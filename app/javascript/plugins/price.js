const price = () => {
  const roomTypeSelect = document.querySelectorAll(".form-control");

  roomTypeSelect.forEach((form) => {
    form.addEventListener("change", (event) => {
      total();
    })
  });
  window.onload = total();
}

let total = () => {
  const priceContainer = $("#price-container");

  var date_diff_indays = function(date1, date2) {
    const dt1 = new Date(date1);
    const dt2 = new Date(date2);
    return Math.floor((Date.UTC(dt2.getFullYear(), dt2.getMonth(), dt2.getDate()) - Date.UTC(dt1.getFullYear(), dt1.getMonth(), dt1.getDate()) ) /(1000 * 60 * 60 * 24));
  }
  const startDate = document.getElementById("booking_start_at").value;
  const endDate = document.getElementById("booking_end_at").value;
  const numGuests = document.getElementById("booking_other_bed_number").value;
  const roomType = document.getElementById("booking_other_room_type").value;
  const numDays = date_diff_indays(new Date(startDate), new Date(endDate));
  const roomPrices = [65, 33, 23, 15, 8]
  let priceOfRoom = 0
  switch(roomType) {
    case "private":
      priceOfRoom = roomPrices[0];
      break;
    case "4 bed":
      priceOfRoom = roomPrices[1];
      break;
    case "6 bed":
      priceOfRoom = roomPrices[2];
      break;
    case "8 bed":
      priceOfRoom = roomPrices[3];
      break;
    case "10 bed":
      priceOfRoom = roomPrices[4];
      break;
  }

  const price = `<div class="price-container2">Price: £${priceOfRoom * numDays * numGuests} <br>`;
  const cashback = `Cashback: £${Math.round((priceOfRoom * numDays * numGuests) * 0.05)}</div>`;
  if ((priceOfRoom * numDays * numGuests) >= 0) {
    priceContainer.html(price + cashback)
  } else {
    let message =``

    priceContainer.html(message);
  }
}

export { price }
