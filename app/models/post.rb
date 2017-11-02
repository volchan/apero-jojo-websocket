class Post < ApplicationRecord
  belongs_to :user

  after_save :broadcast_to_index

  private

  def method_name

  end
end
