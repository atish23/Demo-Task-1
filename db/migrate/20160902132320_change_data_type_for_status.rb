class ChangeDataTypeForStatus < ActiveRecord::Migration[5.0]
  def change
    change_column(:todos, :status, 'integer USING CAST(status AS integer)')
  end
end
