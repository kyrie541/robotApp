class MapsController < ApplicationController

# before_action :admin_authorize, :except => [:index, :show, :search]
  before_action :authenticate_user!

  def index  
    @templates = Template.all
  end

  def new 
    if params[:param1].present?
      @param1 = params[:param1]
      @template = Template.find(@param1)
    end

   @templates = Template.all
    # puts @template.title
    # puts @template.desc
    # puts @template.user.name
  end

end