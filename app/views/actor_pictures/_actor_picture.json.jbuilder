json.extract! actor_picture, :id, :picture_link_id, :actor_id, :created_at, :updated_at
json.url actor_picture_url(actor_picture, format: :json)