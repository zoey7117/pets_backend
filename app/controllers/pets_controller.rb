class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :pet_hungry, :edit, :update, :destroy]


  def new
    @pet = Pet.new
    @users = User.all
    render json: @pet
  end

  def index
    if logged_in?
      @pets = current_user.pets
      render json: @pets
    else
      @pets = Pet.all
      render json: @pets
        # render json: {
        #   error: "You must be logged in to see pets"
        # }
    end
  end


    # else
    #   render json: {
    #     error: "You must be logged in to see pets"
    #   }
    # end


  def show
    @toy = @pet.toys.build
    render json: @pet
  end

  def pet_hungry
      @pet.toggle(:hungry)
      @pet.save
      render json: @pet
  end

  def create
    @pet = Pet.create(pet_params)
    @users = User.all
    render json: @pet
  end

  def edit
    @users = User.all
    render json: @pet
  end

  def update
    @pet.update(pet_params)
    render json: @pet
  end

  def destroy
    @pet.destroy
  end


  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :kind, :age, :user_id, :color, :hair, :image)
  end





end #end of class
