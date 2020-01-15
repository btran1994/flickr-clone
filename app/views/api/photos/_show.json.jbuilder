photo ||= @photo

json.extract! photo, :title, :description, :id

if photo.image.attached?
    json.imageLink url_for(photo.image)
else
    json.imageLink ""
end