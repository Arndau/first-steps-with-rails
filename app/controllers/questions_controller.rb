class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    @question = params[:question]
      # si @question include "?"
      if @question.include?("?")
      # alors retourne "Silly question, get dressed and go to work!"
        @response = @answers[1]
      # elsif la question == "I am going to work"
      elsif @question == "I am going to work"
        # alors retourne "Great!"
        @response = @answers[0]
      # else, return "I don't care, get dressed and go to work!"
      else
        @response = @answers[2]
      end
    end
end
