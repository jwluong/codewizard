class GamecontrolsController < ApplicationController
  before_action :check_character

  def close_profile
    respond_to do |format|
      format.js
      format.html { render 'gamecontrols/town' }
    end
  end

  private

  def check_character
    if current_user.characters.empty?
      redirect_to new_character_path
    end
  end
end
