class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    count = Project.count
    @project.position = count + 1
    if @project.save
      flash[:success] = "Project #{@project.name} created."
      redirect_to projects_path
    else
      flash.now[:notice] = "Project #{@project.name} can not be created"
      puts flash.now[:notice]
      render action: "new", status: :unprocessable_entity
    end
  end

  def new
    @project = Project.new
  end

  def edit

  end

  def show
    @project = Project.find(params[:id])
  end
  def update

  end

  def destroy

  end

  def project_params
    params.require(:project).permit(:name,:description,:github,:category,:on_main_page)
  end
end
