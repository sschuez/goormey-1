# module Surveys
  class SubmissionsController < ApplicationController
    before_action :set_submission, only: %i[ show ]
    before_action :set_survey, only: %i[ new create ]
    
    def index
      @submissions = Submission.all
      @submission = Submission.new
      @survey_user = SurveyUser.new
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
      @submission.survey_user = SurveyUser.last
      @submission.survey = @survey
      authorize @submission
      if @submission.save
        flash[:notice] = "Submission #{@submission.description_short} successfully created"
        redirect_to survey_path(@survey)
      else
        flash[:error] = "Something went wrong"
        render 'index'
      end
    end

    def destroy
      @submission = Submission.find(params[:id])
      @submission.destroy
      redirect_to submissions_path
      flash[:notice] = "Submission #{@submission.description_short} has been deleted."
    end

    private

    def submission_params
      params.require(:submission).permit(:description_short)        
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