class ProjectsController < ApplicationController
  def index

  end

  def create
    puts params[@project]
  end

  def new
    @project = Project.new(project_params)
    if @project.save

    else
      render 'new', :unprocessable_entity
    end
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
