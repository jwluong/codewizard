class CharactersController < ApplicationController
  def show
    @character = current_user.characters[0]
    authorize @character
    respond_to do |format|
      format.js # <-- will render `app/views/reviews/create.js.erb`
      format.html { render 'gamecontrols/town' }
    end
  end

  def new
    @character = Character.new
    authorize @character
  end

  def create
    @character = Character.new(str_params)
    authorize @character
    @character.user = current_user
    if @character.save
      redirect_to town_path
    else
      render :new
    end
  end

  def add_equipment
    @character = Character.find(params[:id])
    character.equipments << equipment
  end

  private

  def str_params
    params.require(:character).permit(:name, :gender)
  end
end
