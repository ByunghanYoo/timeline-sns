class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates_presence_of :post_id, :user_id, :body
  validates_length_of :body, maximum:160, message:"160자를 못넘어요~"
end
