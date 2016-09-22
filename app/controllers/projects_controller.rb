class ProjectsController < ApplicationController
  def index
    @tags = Tag.all

    if params[:tag]
      @projects = Project.with_tag(params[:tag])
    else
      @projects = Project.order(importance: "desc")
    end

    respond_to do |format|
      format.html

      format.js { render :index }
    end 
  end

  def show
  end
end
