class CheckingAccountSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :balance
end
