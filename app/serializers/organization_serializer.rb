class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :lists, :leadname, :password, :email, :category_id

  

end
