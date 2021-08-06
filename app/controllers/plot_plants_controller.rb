class PlotPlantsController < ApplicationController
  # def index
    
  # end

  # def show
    
  # end

  # def new
    
  # end

  # def create
    
  # end

  # def edit
    
  # end

  # def update
    
  # end

  def destroy
    plot_plant_deleted = PlotPlant.find_by(plot: params[:plot_id], plant: params[:plant_id])
    plot_plant_deleted.delete
    redirect_to "/plots"
  end

# private
#   def _params
#     params.permit(:)
#   end
end