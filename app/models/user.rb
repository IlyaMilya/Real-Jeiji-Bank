class User < ApplicationRecord
has_one :exchange
has_one :checking
has_one :saving
has_many :currencies, through: :exchange
end
