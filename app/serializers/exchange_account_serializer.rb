class ExchangeAccountSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :balance, :currencies
end
