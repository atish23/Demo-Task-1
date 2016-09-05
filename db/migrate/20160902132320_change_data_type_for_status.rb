class ChangeDataTypeForStatus < ActiveRecord::Migration[5.0]
  def change
    execute "ALTER TABLE "todos" ALTER COLUMN "status" TYPE integer"
  end
end
