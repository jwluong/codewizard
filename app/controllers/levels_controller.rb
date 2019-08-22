class LevelsController < ApplicationController
  def index
    @levels = policy_scope(Level)
  end

  def show
    @question = Question.find(params[:id])
    authorize @question
    @battle_log = BattleLog.create(character: current_user.characters[0], question: @question)
  end
end
