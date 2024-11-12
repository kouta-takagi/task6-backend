class Todo < ApplicationRecord
  belongs_to :user

  validates :is_finished, inclusion: {in: [true, false]}
end
