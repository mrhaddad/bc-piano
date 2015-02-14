class Api::PerformancesController < ApplicationController
  before_filter :authenticate_user!

  def create
    performance = current_user.performances.create(performance_params.merge(masterclass_id: params[:masterclass_id]))
    render json: MasterclassSerializer.new(performance.masterclass, scope: current_user).to_json
  end

  def update
    performance = current_user.performances.find(params[:id])
    performance.update_attributes(performance_params)
    render json: PerformanceSerializer.new(performance, scope: current_user).to_json
  end

  def destroy
    performance = current_user.performances.find(params[:id])
    performance.destroy
    head :ok
  end

  private

  def performance_params
    params.require(:performance).permit(:composer, :title)
  end
end
