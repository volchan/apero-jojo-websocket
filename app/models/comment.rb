class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :broadcast_to_post_show

  private

  def broadcast_to_post_show
    ActionCable.server.broadcast(
      "post_#{self.post.id}",
      comment: ApplicationController.new.render_to_string(partial: 'comments/comment', locals: { comment: self })
    )
  end
end
