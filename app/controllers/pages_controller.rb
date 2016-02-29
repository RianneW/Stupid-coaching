class PagesController < ApplicationController
  def ask
  end

  def answer
    @ask_question = params[:ask_question]

    if @ask_question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @ask_question == 'I am going to work right now!' || 'I AM GOING TO WORK RIGHT NOW!'
      @answer = 'Finally!'
    elsif @ask_question == @ask_question.upcase
      @answer = "I can feel your motivation!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
