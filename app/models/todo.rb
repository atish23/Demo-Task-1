class Todo < ApplicationRecord
  belongs_to :project
  has_one :users_todo
end
