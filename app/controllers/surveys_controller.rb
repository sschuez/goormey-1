class SurveysController < ApplicationController
  before_action :set_survey, only: %i[ show edit update destroy ]

  def index
    @surveys = policy_scope(Survey)
    @survey = Survey.new
  end

  def show
    @questions = Question.order(:order)
    @submission = Submission.new
  end
  
  def edit
  end

  def create
    @survey = Survey.new(survey_params)
    authorize @survey

    respond_to do |format|
      if @survey.save
        format.html { redirect_to surveys_path, notice: "Survey #{@survey.name} was successfully created." }
        format.json { render :show, status: :created, location: @survey }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to survey_path(@survey), notice: "Survey #{@survey.name} was successfully updated." }
        format.json { render :show, status: :ok, location: @survey }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @survey.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to surveys_path, status: :see_other, notice: "Survey #{@survey.name} was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
  private
  
  def set_survey
    @survey = Survey.find(params[:id])
    authorize @survey
  end

  def survey_params
    params.require(:survey).permit(:name)        
  end
end