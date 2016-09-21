class ProjectsController < ApplicationController
  def index
    @tags = Tag.all
    @projects = Project.order(importance: "desc")
  end

  def show
  end
end
