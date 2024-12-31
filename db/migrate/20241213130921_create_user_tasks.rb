class CreateUserTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :user_tasks do |t|
      t.references :task, null: false, foreign_key: { to_table: :tasks }
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
