class PositionsController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def update
    @item = GlobalID::Locator.locate_signed(params[:sgid])
    @item.insert_at(params[:position])

    head :ok
  end
end