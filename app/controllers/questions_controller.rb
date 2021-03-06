# module Surveys
  class QuestionsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[ show ]
    # before_action :set_question, only: %i[ show, update, destroy ]

    def index
      @survey = Survey.find(params[:survey_id])
      @questions = policy_scope(Question.where(survey: @survey).order(position: :asc))
      @question = Question.new
    end

    def show
      @question = Question.find(params[:id])
      authorize @question
      @survey = Survey.find(params[:survey_id])
      @submission = Submission.find(params[:submission_id])
      @answer = @submission.answers.find_by(question: @question).nil? ? Answer.new : 
      @submission.answers.find_by(question: @question)
      @previous_question = @question.previous_question
    end

    def create
      @survey = Survey.find(params[:survey_id])
      @question = Question.new(question_params)
      @question.question_type = "text"
      @question.survey = @survey
      authorize @question
      
      if @question.save
        redirect_to survey_questions_path(@question.survey)
        flash[:notice] = "Created new question: #{@question.content}"
      else
        render :index
      end
    end

    def edit
      @question = Question.find(params[:id])
      authorize @question
      @survey = @question.survey
    end
    
    def update
      @question = Question.find(params[:id])
      authorize @question
      @survey = @question.survey
      if @question.update(question_params)
        redirect_to survey_questions_path(@survey, anchor: "question-#{@question.id}")
        flash[:notice] = "Question #{@question.content} has been updated"
      else
        render :edit
      end
    end

    def destroy
      @question = Question.find(params[:id])
      authorize @question
      @survey = Survey.find(params[:survey_id])
      @question.destroy

      respond_to do |format|
        # format.turbo_stream { render turbo_stream: turbo_stream.remove(@question) }
        format.html { redirect_to survey_questions_path(@survey), status: :see_other, notice: "Question #{@question.content} was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private

    def question_params
      params.require(:question).permit(:content, :question_type, :hint, :moderation, answers_attributes: [ :content ])
    end
  end
# end