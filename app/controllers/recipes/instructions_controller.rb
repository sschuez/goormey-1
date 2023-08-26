class Recipes::InstructionsController < ApplicationController
  before_action :set_instruction, except: [:new, :create]
  skip_after_action :verify_authorized
  
  def new
    @instruction = Instruction.new
    @instruction.recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @instruction = Instruction.new(instruction_params)
    @instruction.recipe = Recipe.find(params[:recipe_id])
    
    respond_to do |format|
      if @instruction.save
        format.html { redirect_to recipe_path(@instruction.recipe), notice: "Instruction was successfully created." }
        format.turbo_stream {}
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @instruction.update(instruction_params)
        format.html { redirect_to recipe_path(@instruction.recipe), notice: "Instruction updated." }
        format.turbo_stream { flash.now[:notice] = "Instruction updated." }
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @instruction.destroy
    
    respond_to do |format|
      format.html { redirect_to recipe_path(@instruction.recipe), notice: "Instruction was successfully deleted." }
      format.turbo_stream {}
    end
  end

  private

  def set_instruction
    @instruction = Instruction.find(params[:id])
  end

  def instruction_params
    params.require(:instruction).permit(:description)
  end
end