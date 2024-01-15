// web_dynamic/static/scripts/2-hbnb.js


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
