class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  has_many :dash_list_joiners
end
