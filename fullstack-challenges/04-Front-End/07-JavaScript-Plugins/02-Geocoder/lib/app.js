// TODO: Write your JS code in here

// step 2: get the user input from the form
const input = document.querySelector('#keyword');
// selecting the id for the form from HTML
const form = document.querySelector('#geocodingForm');

const coordinatescontainer = document.querySelector('#coordinates');

// step 1: GET request from mapbox with API key. Created a constant
// (FetchPlace) which is what asks site to send us data in Json


// step 1: create a listener on the submission of the form that we put on the site
// step 2: get the user input from the form
// step 3: use the user input to make request to API
// step 4: use the response to display the info on the screen
const displaycoordinates = (data) => {
  // with innerHTML we tell HTM to put whavere user writes in the div with that id
  console.log(data.features[0].center);

  const coordinates = data.features[0].center;
  coordinatescontainer.innerHTML = `${coordinates[0]} longitude ${coordinates[1]} latitude`;
}

// step 3: use the user input to make request to API
const fetchPlace = (keyword) => {
  fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${keyword}.json?access_token=pk.eyJ1IjoieGF2aWVyZXZlcmFlcnQiLCJhIjoiY2thdXV4azZqMGpwNDJxcGcyOGxoNmZ1OSJ9.GKzbLnUH_OsyQc29R0VMhQ`)
    .then(response => response.json())
    .then((data) => {
      displaycoordinates(data);
    });
}

// step 1: create a listener on the submission of the form that we put on the site
// adding an eventlistener that 'listens' to what user does. In this case we need
form.addEventListener('submit', (event) => {
  fetchPlace(input.value);
  console.log(input.value);
  event.preventDefault(); // <-- to prevent <form>'s native behaviour
});


// step 4: use the response to display the info on the screen
