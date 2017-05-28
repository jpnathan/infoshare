class TransportsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_transport, only: [:edit, :show, :update, :destroy]

  def index
    @transports = Transport.all.order('created_at DESC')
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)

    if @transport.save
      redirect_to @transport
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
    if @transport.update(transport_params)
      redirect_to @transport
    else
      render 'edit'
    end
  end

  def destroy
    @transport.destroy
    redirect_to root_path
  end

  private

  def transport_params
    params.require(:transport).permit(:contact, :category, :description, :price, :id)
  end

  def find_transport
    @transport= Transport.find(params[:id])
  end

end