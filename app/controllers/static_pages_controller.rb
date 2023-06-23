class StaticPagesController < ApplicationController
  def home
    @projects = Project.where(on_main_page: true)
  end

  def playground

  end

  def resources

  end

  def login

  end
end
