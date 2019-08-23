module ApplicationHelper

  def setBackground(question)
     if question.level.track == 'easy'
      @addBackground = "forest.png"
    elsif question.level.track == 'medium'
      @addBackground = "desert.jpg"
    else
      @addBackground = "ice.jpg"
    end
  end
end
