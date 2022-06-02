class Exchange < ApplicationRecord
    belongs_to :user
    has_many :currencies
end
