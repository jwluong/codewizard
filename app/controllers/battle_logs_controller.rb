class BattleLogsController < ApplicationController
  skip_after_action :verify_authorized

  def update
    @battle_log = BattleLog.find(params[:id])
    @question = @battle_log.question
    @level = @question.level
    user_answer = params[:battle_log][:user_answer]
    @progress = @level.questions.index(@question)
    @character = current_user.characters[0]
    if user_answer == @question.answer
      if @level.questions[@progress + 1]
        render 'questions/show', question: @level.questions[@progress + 1]
        raise
      else
        render 'gamecontrols/result'
      end
    else
      if (@character.hp - 3) <= 0
        @character.hp = 10
        @character.save
        redirect_to town_path
      else
        @character.hp -= 3
        @character.save
        render 'questions/show', question: @level.questions[@progress]
      end
    end

  end
end
