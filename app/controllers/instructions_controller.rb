class InstructionsController < ApplicationController
  before_action :set_instruction, only: %i[ move ]

  def move
    @instruction.insert_at(params[:position]).to_i
    head :ok  
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_instruction
    @instruction = Instruction.find(params[:id])
    authorize @instruction
  end

  # Only allow a list of trusted parameters through.
  def instruction_params
    params.require(:instruction).permit(:description)
  end
end