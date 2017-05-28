class AccommodationsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_accommodation, only: [:edit, :show, :update, :destroy]

  def index
    @accomodations = Accommodation.all.order('created_at DESC')
  end

  def new
    @accomodation = Accommodation.new
  end

  def create
    @accomodation = Accommodation.new(accommodation_params)

    if @accomodation.save
      redirect_to @accomodation
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
    if @accomodation.update(accommodation_params)
      redirect_to @accomodation
    else
      render 'edit'
    end
  end

  def destroy
    @accomodation.destroy
    redirect_to root_path
  end

  private

  def accommodation_params
    params.require(:accommodation).permit(:contact, :category, :description, :sex, :price, :id)
  end

  def find_accommodation
    @accomodation= Accommodation.find(params[:id])
  end

end
