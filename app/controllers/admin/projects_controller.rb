class Admin::ProjectsController < AdminController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Project successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      flash[:success] = "Project Updated"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :edit
    end

  end

  private

  def project_params
    params.require(:project).permit(:title,
                                    :description,
                                    :image,
                                    :importance,
                                    :github_url,
                                    :production_url, 
                                    tag_ids: [])
  end
end
