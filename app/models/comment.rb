class Comment < ApplicationRecord
  belongs_to :recipe
  belongs_to :user

  # broadcasts_to :recipe

  after_create_commit do
    broadcast_prepend_to :recipe,
      target: "comments",
      partial: "comments/comment",
      locals: { comment: self }
  end

end
