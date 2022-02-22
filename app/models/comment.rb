class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter
    Post.update(comments_counter: post.comments.length)
  end
end