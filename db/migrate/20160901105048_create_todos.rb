class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :name
      t.integer :status
      t.integer :project_id

      t.timestamps
    end
  end
end
