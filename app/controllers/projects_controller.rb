class ProjectsController < ApplicationController
  before_action :find_project, only: [:edit, :show, :update, :destroy]

  def index
    @projects = Project.all.order('created_at DESC')
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:name, :author, :category, :description, :id)
  end

  def find_project
    @project= Project.find(params[:id])
  end
end
