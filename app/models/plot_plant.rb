class PlotPlant < ApplicationRecord
  # validates :
  belongs_to :plot
  belongs_to :plant
end