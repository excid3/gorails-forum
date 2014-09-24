class ForumPost < ActiveRecord::Base
  belongs_to :forum_thread
  belongs_to :user

  validates :body, presence: true
end
