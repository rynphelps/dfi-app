class Actor < ApplicationRecord
    belongs_to :user
    has_many :actor_forms
    has_many :other_forms_links, through: :actor_forms
    has_many :actor_languages
    has_many :language_dialects, through: :actor_languages
    has_many :actor_skills
    has_many :special_skills, through: :actor_skills
    has_many :actor_pictures
    has_many :picture_links, through: :actor_pictures
    has_many :actor_auditions
    has_many :audition_links, through: :actor_auditions
    has_many :roles
    has_many :films, through: :roles
    belongs_to :actor_weight
    belongs_to :actor_height
    belongs_to :nationality
    belongs_to :eye_color
    belongs_to :hair_color

    
    scope :alphabetical, -> { order('name') }
    scope :min_age, -> {where('age >= ?', floor)}
    scope :max_age, -> {where('age <= ?', ceiling)}
    scope :gender, -> (g) { where(gender: g) }
    
    #scope :name, -> (n) { where(name: n) }
    
    
    def age
        dob = date_of_birth
        now = Time.now.utc.to_date
        now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end
    
    filterrific(
        default_filter_params: { sorted_by: 'created_at_desc' },
        available_filters: [
        :alphabetical,
        :min_age,
        :max_age,
        :gender
        ]
    )
    
end
