class ProjectsController < ApplicationController
  def index
    @tags = Tag.all

    if params[:tag]
      @projects = Project.with_tag(params[:tag])
    else
      @projects = Project.order(importance: "desc")
    end
  end

  def show
  end
end
