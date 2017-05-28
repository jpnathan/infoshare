class CadprojectController < ApplicationController
  before_action :find_item, only: [:edit, :show, :update, :destroy]
  #before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @projects = CadProjeto.all.order('created_at DESC')
    #if user_signed_in?
    #  @project = CadProjeto.where(:user_id => current_user.id).order("created_at DESC") 
    #end
  end

  def new
    @project = CadProjeto.new
  end

  def create
    @project = CadProjeto.new(cadproject_params)

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

  def cadproject_params
    params.require(:cadproject).permit(:nome, :autor, :categoria, :descricao, :id)
  end

  def find_item
    @project= CadProjeto.find(params[:id])
  end
end
