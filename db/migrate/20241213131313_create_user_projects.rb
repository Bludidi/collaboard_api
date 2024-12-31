class CreateUserProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :user_projects do |t|
      t.references :project, null: false, foreign_key: { to_table: :projects }
      t.references :user, null: false, foreign_key: { to_table: :users }
      t.string :role

      t.timestamps
    end
  end
end
