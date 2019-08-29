class BattleLogsController < ApplicationController
  skip_after_action :verify_authorized
  include ApplicationHelper

  def update
    @battle_log = BattleLog.find(params[:id])
    @question = Question.find(params[:question_id])
    @level = @question.level
    user_answer = params[:battle_log][:user_answer]
    @battle_log.user_answer = user_answer
    @battle_log.save
    p "battle question ID = #{@battle_log.question_id}"
    @progress = @level.questions.index(@question)
    @character = current_user.characters[0]
    setBackground(@question)
    if user_answer == @question.answer
      gain_exp_coin
      if !@level.questions[@progress + 1].nil?
        # render 'questions/show', question: @level.questions[@progress + 1]
        @character.save
        @status = "next"
      else
        # render 'gamecontrols/result'
        @status = "result"
        @battle_log.completed = "yes"
        @battle_log.save
        @top = BattleLog.where("completed = 'yes' AND question_id = #{@battle_log.question_id}").order('updated_at - created_at')
        p "@top = #{@top}"
      end
    else
      if (@character.hp - 3) <= 0
        @character.hp = @character.lv + 9
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
      format.js # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  private

  def gain_exp_coin
    @character.exp += 1
    @character.coin += 10
    if @character.exp >= @character.lv * 5
      @character.lv += 1
      @character.exp -= (@character.lv - 1) * 5
    end
  end
end
