class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = if @question.downcase == 'i am going to work'
                'Great!'
              elsif @question[-1].include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care!"
              end
  end
end
