class CreateUsersTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :users_todos do |t|
      t.integer :user_id
      t.integer :todo_id
    end
  end
end
