class FilmCaster < ApplicationRecord
    belongs_to :film
    belongs_to :casting_director
end
