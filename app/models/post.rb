class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes

  validates_presence_of :user_id, :body
  validates_length_of :body, maximum:160, message:"160자를 못넘어요~"
end
