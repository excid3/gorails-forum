# == Schema Information
#
# Table name: forum_posts
#
#  id              :integer          not null, primary key
#  forum_thread_id :integer
#  user_id         :integer
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ForumPostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
