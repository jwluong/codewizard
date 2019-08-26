class ItemsController < ApplicationController
  def index
    @items = policy_scope(Item)
    respond_to do |format|
      format.js # <-- will render `app/views/reviews/create.js.erb`
      format.html { render 'gamecontrols/town' }
    end
  end

  def create
  end

  def new
  end
end

