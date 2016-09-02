class ChangeDataTypeForStatus < ActiveRecord::Migration[5.0]
  def change
    change_column(:todos, :status, :integer)
  end
end
