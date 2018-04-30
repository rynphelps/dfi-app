class Role < ApplicationRecord
    belongs_to :film
    belongs_to :actor
end
