json.extract! film, :id, :name, :year, :director, :video_link, :created_at, :updated_at
json.url film_url(film, format: :json)