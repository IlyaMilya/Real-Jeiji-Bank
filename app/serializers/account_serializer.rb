class AccountSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :balance, :account_type
end
