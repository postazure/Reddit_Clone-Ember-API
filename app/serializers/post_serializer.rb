class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :username, :link, :description
end
