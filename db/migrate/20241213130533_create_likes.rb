class CreateLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :likes do |t|
      t.references :comment, null: false, foreign_key: { to_table: :comments }
      t.references :user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
