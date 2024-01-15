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
});
