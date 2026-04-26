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
class Task < ApplicationRecord
    
    include AASM

    aasm column: :status do
        state :pending, initial: true
        state :in_progress
        state :completed
        state :cancelled

        event :start do
            transitions from: :pending, to: :in_progress
        end

        event :complete do
            transitions from: [:pending, :in_progress], to: :completed
        end

        event :cancel do
            transitions from: [:pending, :in_progress], to: :cancelled
        end
    end
end
