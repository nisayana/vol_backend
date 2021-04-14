class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :email, :age, :password
  has_many :dash_list_joiners
  
end
