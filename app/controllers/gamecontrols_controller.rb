class GamecontrolsController < ApplicationController
  before_action :check_character

  private

  def check_character
    if current_user.characters.empty?
      redirect_to new_character_path
    end
  end
end
