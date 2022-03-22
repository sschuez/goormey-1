class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
    @survey = Survey.new
    skip_policy_scope
  end

  def show
    @survey = Survey.find(params[:id])
    @questions = Question.order(:order)
    @submission = Submission.new
    authorize @survey
  end
  
  def create
    # @surveys = survey.all
    @survey = Survey.new(survey_params)
    authorize @survey
    if @survey.save
      flash[:notice] = "Survey #{@survey.name} successfully created"
      redirect_to surveys_path
    else
      flash[:error] = "Something went wrong"
      render 'index'
    end
  end
  
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path
    flash[:notice] = "Survey #{@survey.description_short} has been deleted."
  end
  
  private
  
  def survey_params
    params.require(:survey).permit(:name)        
  end
end