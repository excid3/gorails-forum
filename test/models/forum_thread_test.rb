# == Schema Information
#
# Table name: forum_threads
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  subject    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ForumThreadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
