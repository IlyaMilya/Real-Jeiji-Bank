class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :username, :password
end
