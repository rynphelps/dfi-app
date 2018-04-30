json.extract! audition_link, :id, :audition, :created_at, :updated_at
json.url audition_link_url(audition_link, format: :json)