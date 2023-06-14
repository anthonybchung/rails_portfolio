class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Project #{@project.name} created."
      redirect_to @project
    else
      render 'new', :unprocessable_entity
    end
  end

  def new
    @project = Project.new
  end

  def edit

  end

  def show

  end
  def update

  end

  def destroy

  end

  def project_params
    params.require(:project).permit(:name,:description,:github,:category,:on_main_page)
  end
end
