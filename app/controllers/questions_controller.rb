class QuestionsController < ApplicationController
  def ask
  end

  def answer

    @question = params[:question]
    good = 'I am going to work'
    if @question.downcase == good.downcase
      @answer = 'Great!'
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
