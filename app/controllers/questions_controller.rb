# frozen_string_literal: true

class QuestionsController < ApplicationController
  def ask; end

  def answer
    # @answers = ["Great!", "Silly question get dressed and go to work!", "I don't care get dressed and go to work!"]

    @answer = if params[:question] == 'I am going to work'
                'Great!'
              elsif params[:question].to_s.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care"
              end
  end
end
