class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location, :lng, :lat
  has_many :lists
end
