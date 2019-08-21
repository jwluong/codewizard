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
  end

  def create
    @character = Character.new(str_params)
    @character.user = current_user
    if @character.save
      redirect_to town_path
    else
      render :new
    end
  end

  private

  def str_params
    params.require(:character).permit(:name, :gender)
  end
end
