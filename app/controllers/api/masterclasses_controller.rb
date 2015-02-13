class Api::MasterclassesController < ApplicationController
  def index
    render json: ActiveModel::ArraySerializer.new(Masterclass.order(:date).includes(performances: :user), scope: current_user)
  end
end
