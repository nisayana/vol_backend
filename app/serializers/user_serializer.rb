class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :dash_list_joiners
end
