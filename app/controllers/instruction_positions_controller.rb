class InstructionPositionsController < ApplicationController

  def update
    @instruction = Instruction.find(params[:instruction_id])
    authorize @instruction.recipe

    # @instruction.insert_at(params[:position].to_i)
    # @instruction.position = params[:position]
    # binding.pry
    # @instruction.save

    @instruction.update(:position => params[:position])

    head :ok
  end

  # private
  # # Use callbacks to share common setup or constraints between actions.

  # # Only allow a list of trusted parameters through.
  # def instruction_params
  #   params.require(:instruction).permit(:description)
  # end
end