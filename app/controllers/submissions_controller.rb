# module Surveys
  class SubmissionsController < ApplicationController
    before_action :set_submission, only: %i[ show ]
    before_action :set_survey, only: %i[ new create ]
    
    def index
      @submissions = Submission.all
      @submission = Submission.new
      skip_policy_scope
    end

    def show
      @questions = @submission.survey.questions.order(:order)
    end

    def new
      @submission = Submission.new
      authorize @submission
    end

    def create
      @submission = Submission.new(submission_params)
      authorize @submission
      @submission.survey = @survey
      if @submission.save
        flash[:notice] = "Let's go (#{@submission.email})"
        redirect_to survey_submission_question_path(@survey, @submission, @survey.questions.find_by(position: 1))
      else
        flash[:error] = "Something went wrong"
        render 'index'
      end
    end

    def destroy
      @submission = Submission.find(params[:id])
      @submission.destroy
      redirect_to submissions_path
      flash[:notice] = "Submission (#{@submission.email}) has been deleted."
    end

    private

    def submission_params
      params.require(:submission).permit(:email)        
    end

    def set_submission
      @submission = Submission.find(params[:id])
      authorize @submission
    end

    def set_survey
      @survey = Survey.find(params[:survey_id])
    end
  end
# end