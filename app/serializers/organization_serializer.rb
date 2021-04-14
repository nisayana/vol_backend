class OrganizationSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :image, :description, :lists, :password, :email, :category_id

end
