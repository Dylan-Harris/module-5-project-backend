class CommentSerializer < ActiveModel::Serializer
  attributes :id, :forum_id, :user_id, :content
end
