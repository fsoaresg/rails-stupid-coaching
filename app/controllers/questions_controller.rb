class QuestionsController < ApplicationController

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask
  end

  private

  def coach_answer(question)
    @reply = []
    if params[:question] == 'I am going to work'
      @reply = 'Great!'
    elsif params[:question].end_with?("?")
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = 'I don\'t care, get dressed and got to work!'
    end
  end
end
