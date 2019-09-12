class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :background_image, :genre, :trailer, :parent_platform
  
end
