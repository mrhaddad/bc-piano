class Api::MasterclassesController < ApplicationController
  before_filter :authenticate_user!

  def index
    render json: ActiveModel::ArraySerializer.new(Masterclass.order(:date))
  end
end
