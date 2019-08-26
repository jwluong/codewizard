class ItemsController < ApplicationController
    def index
    @items = policy_scope(Item)
    respond_to do |format|
      format.js # <-- will render `app/views/reviews/create.js.erb`
      format.html { render 'gamecontrols/town' }
    end
    # @char_equipment = current_user.character.equipment
  end

  def create
  end

  def new
  end
end
