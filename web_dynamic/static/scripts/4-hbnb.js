$(document).ready(function() {
    let amenities = {};
    $('input[type="checkbox"]').on('change', function() {
        const amenityID = $(this).data('id');
        const amenityName = $(this).data('name');

        if ($(this).is(':checked')) {
            amenities[amenityID] = amenityName;
        } else {
            delete amenities[amenityID];
        }
        let amenitiesList = Object.values(amenities).join(', ');
        $('.amenities h4').text(amenitiesList);

    });
    const apiUrl = 'http://127.0.0.1:5001/api/v1/status/';
    $.ajax({
        url: apiUrl,
        type: 'GET',
        dataType: 'json',
        success: function (data) {
            const apiStatusDiv = $('#api_status');
            if (data.status === 'OK') {
                apiStatusDiv.addClass('available');
            } else {
                apiStatusDiv.removeClass('available');
            }
        },
        error: function (error) {
            console.error('Error fetching API status:', error);
        }
    });
});


$(document).ready(function () {
    const apiUrl = 'http://127.0.0.1:5001/api/v1/places_search/';

    // Make a POST request with an empty JSON body
    $.ajax({
        url: apiUrl,
        type: 'POST',
        contentType: 'application/json',
        data: JSON.stringify({}),
        success: function (data) {
            // Get the section with the class 'placesh1'
            const placesSection = $('.placesh1');

            // Create the container for articles
            const placesContainer = $('<div>').addClass('places'); // Add class

            // Loop through the results and create article tags
            data.forEach(place => {
                const article = $('<article>').addClass('article'); // Add class

                // Create the structure for each place
                const titleBox = $('<div>').addClass('title_box'); // Add class

                const title = $('<h2>').text(place.name);

                const priceByNight = $('<div>').text(`$${place.price_by_night}`).addClass('price_by_night');

                titleBox.append(title, priceByNight);

                const information = $('<div>').addClass('information details'); // Add classes

                const maxGuest = $('<div>').text(`${place.max_guest} Guest${place.max_guest !== 1 ? 's' : ''}`).addClass('max_guest');

                const numberRooms = $('<div>').text(`${place.number_rooms} Bedroom${place.number_rooms !== 1 ? 's' : ''}`).addClass('number_rooms');

                const numberBathrooms = $('<div>').text(`${place.number_bathrooms} Bathroom${place.number_bathrooms !== 1 ? 's' : ''}`).addClass('number_bathrooms');

                // Fetch user information based on user_id
                $.ajax({
                    url: `http://127.0.0.1:5001/api/v1/users/${place.user_id}`,
                    success: function (user) {
                        // Check if user properties exist before accessing them
                        if (user && user.first_name && user.last_name) {
                            const userElement = $('<div>').addClass('user').text(`Owner: ${user.first_name} ${user.last_name}`);
                            article.append(userElement);
                        }
                    },
                    error: function (error) {
                        console.error('Error fetching user:', error);
                    }
                });

                const description = $('<div>').text(place.description).addClass('description'); // Add description

                // Add the details to the details container
                information.append(maxGuest, numberRooms, numberBathrooms);

                // Add all elements to the article
                article.append(titleBox, information, description);

                // Append the article to the container
                placesContainer.append(article);
            });

            // Append the container to the section.places
            placesSection.append(placesContainer);
        },
        error: function (error) {
            console.error('Error fetching places:', error);
        }
    });
    // Event listener for the search button
    $('#searchButton').click(performSearch);

    function performSearch() {
        // Get the list of checked amenities
        const amenities = $('input[name="amenities"]:checked');
        const amenityList = amenities.map(function() {
            return this.value;
        }).get();

        // Make a POST request to places_search with the list of checked amenities
        $.ajax({
            type: 'POST',
            url: 'http://127.0.0.1:5000/api/v1/places_search/',
            contentType: 'application/json',
            data: JSON.stringify({ amenities: amenityList }),
            success: function (data) {
                // Handle the response data as needed
                console.log(data);
            },
            error: function (error) {
                console.error('Error performing search:', error);
            }
        });
    }
});
