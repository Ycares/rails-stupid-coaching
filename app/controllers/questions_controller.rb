class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answ = ["Great", "Silly question, get dressed and go to work!", "I don't care, get dresses and go to work!"]
    @question = params[:question]
    if @question.end_with?('?')
      @answ = @answ[1]
    elsif @question == 'I am going to work'
      @answ = @answ[0]
    else
      @answ = @answ[2]
    end
  end
end
