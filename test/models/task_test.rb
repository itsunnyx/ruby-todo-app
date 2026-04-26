# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  category    :string
#  description :text
#  due_date    :date
#  priority    :string
#  status      :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
