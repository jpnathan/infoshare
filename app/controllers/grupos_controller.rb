class GruposController < ApplicationController
  before_action :authenticate_user!
  before_action :find_grupo, only: [:edit, :show, :update, :destroy]

  def index
    @grupos = Grupo.all.order('created_at DESC')
  end

  def new
    @grupo = Grupo.new
  end

  def create
    @grupo = Grupo.new(jobs_params)

    if @grupo.save
      redirect_to @grupo
    else
      render 'new'
    end
  end

  def show
    #teste commit
  end

  def edit
  end

  def update
    if @grupo.update(grupo_params)
      redirect_to @grupo
    else
      render 'edit'
    end
  end

  def destroy
    @grupo.destroy
    redirect_to root_path
  end

  private

  def grupo_params
    params.require(:grupos).permit(:nome, :autor, :disciplina, :id)
  end

  def find_grupo
    @grupo= Grupo.find(params[:id])
  end

end
