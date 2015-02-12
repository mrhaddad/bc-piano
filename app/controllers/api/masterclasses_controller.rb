class Api::MasterclassesController < ApplicationController
  before_filter :authenticate_user!

  def index
    render json: Masterclass.order(:date)
  end
end
