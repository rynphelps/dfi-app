class ActorLanguage < ApplicationRecord
    belongs_to :actor
    belongs_to :language_dialect
end
