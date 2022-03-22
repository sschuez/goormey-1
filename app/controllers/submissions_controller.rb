# module Surveys
  class SubmissionsController < ApplicationController
    def index
      @submissions = Submission.all
      @submission = Submission.new
      @survey_user = SurveyUser.new
      skip_policy_scope
    end

    def show
      @submission = Submission.find(params[:id])
      @questions = Question.order(:order)
      authorize @submission
    end

    def create
      # @submissions = Submission.all
      @survey = Survey.find(params[:survey_id])
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
  end
# end