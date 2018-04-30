json.extract! film_caster, :id, :casting_director_id, :film_id, :created_at, :updated_at
json.url film_caster_url(film_caster, format: :json)