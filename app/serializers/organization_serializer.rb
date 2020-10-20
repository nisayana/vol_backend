class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
  has_many :lists
end
