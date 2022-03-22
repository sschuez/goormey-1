module Surveys
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
      @submission = Submission.new(submission_params)
      # @survey_user = SurveyUser.new(survey_user_params)
      # authorize @survey_user
      authorize @submission
      @submission.survey_user = SurveyUser.last
      @submission.user = current_user
      if @submission.save
        flash[:notice] = "Submission #{@submission.description_short} successfully created"
        redirect_to surveys_submissions_path
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
      params.require(:surveys_submission).permit(:description_short)        
    end

    def survey_user_params
      params.require(:surveys_survey_user).permit(:email)
    end
  end
end