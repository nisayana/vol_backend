class CategorySerializer < ActiveModel::Serializer
  
  attributes :id, :name, :image
  has_many :organizations

  # def specificLists
  #   specificLists = object.lists.map{|list|
  #       {"name": list.name,
  #       "description": list.description,
  #       "location": list.location,
  #       "date": list.date
  #   }
  # }
  #   return specificLists
  # end

end
