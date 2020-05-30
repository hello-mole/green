class PlansController < ApplicationController
  def index
    @todos = Todolist.all
  end
  
  def import
    Todolist.import(params[:file])
    redirect_to 'Plans/index', notice: "Activity Data imported!"
  end
  
end
