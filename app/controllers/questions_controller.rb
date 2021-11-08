class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @user_input = params['user_input']

    if @user_input.last === '?'
      @coach_response = 'Silly question, get dressed and go to work!'
    elsif @user_input.downcase === 'i am going to work'
      @coach_response = 'Great!'
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
