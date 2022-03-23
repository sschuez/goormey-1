class QuestionPositionsController < ApplicationController
  def update
    @question = Question.find(params[:question_id])
    authorize @question.survey

    @question.insert_at(params[:position].to_i)
    head :ok
  end
end