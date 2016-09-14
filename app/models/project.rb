class Project < ActiveRecord::Base
  has_many :project_taggings
  has_many :tags, through: :project_taggings
end
