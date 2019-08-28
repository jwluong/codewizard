class LevelsController < ApplicationController
  include ApplicationHelper
  def index
    @levels = policy_scope(Level)
  end

  def show
    @question = Question.find(params[:id])
    authorize @question
    @level = @question.level
    @progress = @level.questions.index(@question)
    @battle_log = BattleLog.create(character: current_user.characters[0], question: @question)
    setBackground(@question)
  end
end
