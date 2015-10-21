json.(post, :id, :content, :created_at, :updated_at, :user_id)

comments ||= nil

unless comments.nil?
  json.comments(comments) do |comment|
    json.partial!('comments/comment', :comment => comment)
  end
end
