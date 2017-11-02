class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  after_save :broadcast_to_index

  private

  def method_name

  end
end
