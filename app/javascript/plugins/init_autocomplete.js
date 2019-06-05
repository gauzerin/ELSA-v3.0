import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('city_name');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
