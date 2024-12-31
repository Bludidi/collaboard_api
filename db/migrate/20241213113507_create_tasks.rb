class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :status, default: 'pending'
      t.references :project_id, null: false, foreign_key: { to_table: :projects }
      t.references :assigned_to, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
