# module Surveys
  class SubmissionsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[ show new create update ]
    before_action :set_submission, only: %i[ show ]
    before_action :set_survey, only: %i[ new create destroy ]
    
    def index
      @submissions = Submission.all
      @submission = Submission.new
      skip_policy_scope
    end

    def show
      @questions = @submission.survey.questions.order(:order)
    end

    def new
      @submission = Submission.new submission_complete: false
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

    def update
      finish_submission_path
    end

    def destroy
      @submission = Submission.find(params[:id])
      @survey = @submission.survey
      authorize @submission
      @submission.destroy
      # redirect_to survey_path(@survey)
      # flash[:notice] = "Submission (#{@submission.email}) has been deleted."
      
      respond_to do |format|
        format.html { redirect_to survey_path(@survey), status: :see_other, notice: "Submission (#{@submission.email}) has been deleted." }
        format.json { head :no_content }
      end
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

    def finish_submission_path
      @submission = Submission.find(params[:id])
      authorize @submission
      @submission.update! submission_complete: true
      redirect_to root_path
      @contact = Contact.new
      flash[:notice] = "Thanks a lot! Feel free to take a look at the early stage platform. If you have any additional feedback, please get touch via the contact button at the bottom."
    end
  end
# end