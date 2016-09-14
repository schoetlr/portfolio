class AddImportanceToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :importance, :integer
  end
end
