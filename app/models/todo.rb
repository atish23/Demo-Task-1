class Todo < ApplicationRecord
  enum status: [:In_Progress,:Done,:New]
  belongs_to :project
  has_one :users_todo
  scope :status_count, -> (value) { where(status: value).count }

  # scope :In_Progress_count, -> (value) { where(status: value) }

end
