class BattleLogsController < ApplicationController
  skip_after_action :verify_authorized

  def update
    @battle_log = BattleLog.find(params[:id])
    @question = Question.find(params[:question_id])
    @level = @question.level
    user_answer = params[:battle_log][:user_answer]
    @progress = @level.questions.index(@question)
    @character = current_user.characters[0]
    if user_answer == @question.answer
      # p @level.questions[@progress + 1]
      if !@level.questions[@progress + 1].nil?
        # render 'questions/show', question: @level.questions[@progress + 1]
      p  @status = "next"

      else
        # render 'gamecontrols/result'
      p  @status = "result"
      end
    else
      if (@character.hp - 3) <= 0
        @character.hp = 10
        @character.save

        @status = "town"
      else
        @character.hp -= 3
        @character.save
        @status = "stay"
        # render 'questions/show', question: @level.questions[@progress]
      end
    end
    respond_to do |format|
      # format.html { render 'questions/show' }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end
end
