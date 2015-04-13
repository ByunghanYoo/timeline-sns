class Log < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :action
end
