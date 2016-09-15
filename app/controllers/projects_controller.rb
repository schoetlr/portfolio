class ProjectsController < ApplicationController
  def index
    @projects = Project.order(importance: "desc")
  end

  def show
  end
end
