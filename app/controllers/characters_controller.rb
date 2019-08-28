class CharactersController < ApplicationController
  def index
    @list = policy_scope(Character).order(lv: :desc).limit(10)
    p'@list= '
    p @list
    respond_to do |format|
      format.js # <-- will render `app/views/reviews/create.js.erb`
      format.html { render 'gamecontrols/town' }
    end
  end

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

  def add_item
    @character = Character.find(params[:id])
    authorize @character
    item = Item.find(params[:item])
    @character.items << item
    @character.hp += item.effect
    @character.coin -= item.price
    @character.save
  end

  private

  def str_params
    params.require(:character).permit(:name, :gender)
  end
end
