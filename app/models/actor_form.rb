class ActorForm < ApplicationRecord
    belongs_to :other_forms_link
    belongs_to :actor
end
