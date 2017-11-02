class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  after_save :broadcast_to_index

  private

  def broadcast_to_index
    ActionCable.server.broadcast(
      'index',
      post: ApplicationController.new.render_to_string(
        partial: 'posts/post',
        locals: {
          post: self,
          path: Rails.application.routes.url_helpers.post_path(self, locale: nil)
        },
        layout: false)
    )
  end
end
