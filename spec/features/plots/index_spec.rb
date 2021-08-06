require 'rails_helper'
RSpec.describe 'it can show the index page for the plots' do
  before :each do
    @garden1 = Garden.create!(name: "Gunnar's", organic: true)
    @garden2 = Garden.create!(name: "Greg's", organic: false)

    @plot1 = Plot.create!(number: 1, size: "small", direction: "east", garden_id: @garden1.id)
    @plot2 = Plot.create!(number: 2, size: "medium", direction: "west", garden_id: @garden1.id)
    @plot3 = Plot.create!(number: 3, size: "large", direction: "north", garden_id: @garden1.id)
    @plot4 = Plot.create!(number: 4, size: "large", direction: "south", garden_id: @garden2.id)

    @plant1 = Plant.create!(name: "Rose", description: "Flower", days_to_harvest: 55)
    @plant2 = Plant.create!(name: "Lily", description: "Flower", days_to_harvest: 35)
    @plant3 = Plant.create!(name: "Carrot", description: "vegetable", days_to_harvest: 80)
    @plant4 = Plant.create!(name: "Lettuce", description: "vegetable", days_to_harvest: 30)

    @plot_plant1 = PlotPlant.create!(plant_id: @plant1, plot_id: @plot1)
    @plot_plant2 = PlotPlant.create!(plant_id: @plant2, plot_id: @plot1)
    @plot_plant3 = PlotPlant.create!(plant_id: @plant3, plot_id: @plot2)
    @plot_plant4 = PlotPlant.create!(plant_id: @plant4, plot_id: @plot2)
    @plot_plant5 = PlotPlant.create!(plant_id: @plant1, plot_id: @plot3)
    @plot_plant6 = PlotPlant.create!(plant_id: @plant2, plot_id: @plot3)
    @plot_plant7 = PlotPlant.create!(plant_id: @plant3, plot_id: @plot3)
    @plot_plant8 = PlotPlant.create!(plant_id: @plant4, plot_id: @plot3)

    visit "/plots"
  end
  it '' do
    
  end
end