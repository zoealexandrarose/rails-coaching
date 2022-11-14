class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:ask] == "I am going to work"
      @return = @answers[0]
    elsif params[:ask].end_with?
      @return = @answers[1]
    else
      @return = @answers[2]
    end
  end
end
