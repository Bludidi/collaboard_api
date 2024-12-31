class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.references :task, null: false, foreign_key: { table_to: :tasks }
      t.references :user, null: false, foreign_key: {  table_to: :users }
      t.text :comment

      t.timestamps
    end
  end
end
