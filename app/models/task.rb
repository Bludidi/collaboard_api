class Task < ApplicationRecord
  belongs_to :project_id
  belongs_to :assigned_to
end
