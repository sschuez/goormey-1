# module Surveys
  class QuestionsController < ApplicationController
    before_action :set_question, only: [ :show, :edit, :update ]

    def index
      @questions = Question.order(:order)
      @question = Question.new
      @survey = Survey.find(params[:survey_id])
      skip_policy_scope
    end

    def show
      @survey = Survey.find(params[:survey_id])
      @submission = Submission.find(params[:submission_id])
      @answer = @submission.answers.find_by(question: @question).nil? ? Answer.new : @submission.answers.find_by(question: @question) 
      @previous_question = @question.previous_question
      authorize @question
    end

    def create
      @question = Question.new(question_params)
      @survey = Survey.find(params[:survey_id])
      @question.survey = @survey
      
      authorize @question
      if @question.save
        redirect_to survey_questions_path(@question.survey)
        flash[:notice] = "Created new question: #{@question.title}"
      else
        render :index
      end
    end

    def edit
      authorize @question
    end

    def update
      @survey = @question.survey
      @question.survey = @survey
      authorize @question
      if @question.update(question_params)
        redirect_to survey_questions_path(@survey, anchor: "question-#{@question.id}")
        flash[:notice] = "Question #{@question.title} has been updated"
      else
        render :edit
      end
    end

    private

    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:content, :order, :question_type, :hint, :title, :moderation, :identifier, :input_hidden, answers_attributes: [ :content ])
    end
  end
# end