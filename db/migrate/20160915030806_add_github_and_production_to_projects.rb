class AddGithubAndProductionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :github_url, :string
    add_column :projects, :production_url, :string
  end
end
