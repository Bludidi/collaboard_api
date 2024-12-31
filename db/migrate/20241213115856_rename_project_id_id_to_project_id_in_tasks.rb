class RenameProjectIdIdToProjectIdInTasks < ActiveRecord::Migration[8.0]
  def change
    rename_column :tasks, :project_id_id, :project_id
  end
end
