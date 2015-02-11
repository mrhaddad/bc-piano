class MasterclassesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @masterclasses = Masterclass.all
  end
end
