class GamecontrolsController < ApplicationController
  before_action :check_character

  def town
    authorize :gamecontrol, :town?
    character = current_user.characters[0]
    character.hp = character.maxHealth
    character.save
  end

  def wild
    authorize :gamecontrol, :wild?
    @level = Level.find(params[:level])
    @battle_log = BattleLog.new
  end

  private

  def check_character
    redirect_to new_character_path if current_user.characters.empty?
  end
end
