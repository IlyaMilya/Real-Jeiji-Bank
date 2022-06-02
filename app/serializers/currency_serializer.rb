class CurrencySerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image
end
