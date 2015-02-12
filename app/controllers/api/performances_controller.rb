class Api::PerformancesController < ApplicationController
  before_filter :authenticate_user!

  def create
    performance = current_user.performances.create(performance_params.merge(masterclass_id: params[:masterclass_id]))
    render json: PerformanceSerializer.new(performance).to_json
  end

  private

  def performance_params
    params.require(:performance).permit(:composer, :title)
  end
end
