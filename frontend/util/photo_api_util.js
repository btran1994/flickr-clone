export const createPhoto = photo => (
    $.ajax({
        method: 'POST',
        url: '/api/photos',
        data: { photo },
        contentType: false,
        processData: false
    })
);

export const fetchPhoto = id => (
    $.ajax({
        method: 'GET',
        url: `/api/photos/${id}`
    })
);

export const fetchPhotos = photos => (
    $.ajax({
        method: 'GET',
        url: '/api/photos',
        data: { photos }
    })
);

export const deletePhoto = id => (
    $.ajax({
        method: 'DELETE',
        url: `/api/photos/${id}`
    })
)

