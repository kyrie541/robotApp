class DirectionsController < ApplicationController

  before_action :authenticate_user!

  def index
    if params[:param3] != "haha" && params[:param4] != "hehe"
      @template = Template.find_by_coordinate(params[:param3])
      @template.coordinate = params[:param4]
      @template.save
    else
      redirect_to new_direction_path, notice: 'Error, Please Try Again! '
    end

  end

  def new 
    @templates=Template.all
    @template=Template.new
  end

end

