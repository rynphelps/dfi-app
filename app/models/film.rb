class Film < ApplicationRecord
    has_many :film_casters
    has_many :roles
    has_many :actors, through: :roles
    has_many :casting_directors, through: :film_casters
    
    validates_presence_of :name
    validates_presence_of :year
    validates_presence_of :director
    
    scope :alphabetical, -> { order('name') }
    scope :in_production, -> { where(in_production: true) }
    scope :completed, -> { where(in_production: false) }
    scope :by_director_alphabetical, -> { order('director') }
end
