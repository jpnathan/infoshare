class CadprojectController < ApplicationController
  before_action :find_item, only: [:index, :edit, :show, :update, :destroy]
  
  def index
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
      params.require(:cad_projetos).permit(:nome, :autor, :categoria, :descricao, :id)
    end

    def find_item
      @project = CadProjeto.find(params[:id])
    end
  end
