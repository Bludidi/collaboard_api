class Project < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "created_by_id"
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :created_by_id, presence: true
end
