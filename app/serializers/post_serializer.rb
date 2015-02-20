class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :username, :link, :description
  has_many :comments
end
