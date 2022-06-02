class ExchangeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :balance, :first_cryp_id, :second_cryp_id, :third_cryp_id
end
