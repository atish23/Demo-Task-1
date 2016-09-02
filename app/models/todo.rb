class Todo < ApplicationRecord
  enum status: [:In_Progress,:Done,:Testing]
  belongs_to :project
  has_one :users_todo
end
