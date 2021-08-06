require 'rails_helper'
RSpec.describe 'it can show the index page for the plots' do
  before :each do
    @garden1 = Garden.create!(name: "Gunnar's", organic: true)
    @garden2 = Garden.create!(name: "Greg's", organic: false)

    @plot1 = Plot.create!(number: 36, size: "small", direction: "east", garden_id: @garden1.id)
    @plot2 = Plot.create!(number: 24, size: "medium", direction: "west", garden_id: @garden1.id)
    @plot3 = Plot.create!(number: 5, size: "large", direction: "north", garden_id: @garden1.id)
    @plot4 = Plot.create!(number: 69, size: "large", direction: "south", garden_id: @garden2.id)

    @plant1 = Plant.create!(name: "Rose", description: "Flower", days_to_harvest: 55)
    @plant2 = Plant.create!(name: "Lily", description: "Flower", days_to_harvest: 35)
    @plant3 = Plant.create!(name: "Carrot", description: "vegetable", days_to_harvest: 80)
    @plant4 = Plant.create!(name: "Lettuce", description: "vegetable", days_to_harvest: 30)

    @plot_plant1 = PlotPlant.create!(plant_id: @plant1.id, plot_id: @plot1.id)
    @plot_plant2 = PlotPlant.create!(plant_id: @plant2.id, plot_id: @plot1.id)
    @plot_plant3 = PlotPlant.create!(plant_id: @plant3.id, plot_id: @plot2.id)
    @plot_plant4 = PlotPlant.create!(plant_id: @plant4.id, plot_id: @plot2.id)
    @plot_plant5 = PlotPlant.create!(plant_id: @plant1.id, plot_id: @plot3.id)
    @plot_plant6 = PlotPlant.create!(plant_id: @plant2.id, plot_id: @plot3.id)
    @plot_plant7 = PlotPlant.create!(plant_id: @plant3.id, plot_id: @plot3.id)
    @plot_plant8 = PlotPlant.create!(plant_id: @plant4.id, plot_id: @plot3.id)

    visit "/plots"
  end
  it 'can see all the list of all the plots numbers and all the plants associated with that plot underneath it' do
    within "#index-plots-#{@plot1.id}" do
      expect(page).to have_content("#{@plot1.number}")
      expect(page).to have_content("#{@plant1.name}")
      expect(page).to have_content("#{@plant2.name}")
    end

    within "#index-plots-#{@plot2.id}" do
      expect(page).to have_content("#{@plot2.number}")
      expect(page).to have_content("#{@plant3.name}")
      expect(page).to have_content("#{@plant4.name}")
    end

    within "#index-plots-#{@plot3.id}" do
      expect(page).to have_content("#{@plot3.number}")
      expect(page).to have_content("#{@plant1.name}")
      expect(page).to have_content("#{@plant2.name}")
      expect(page).to have_content("#{@plant3.name}")
      expect(page).to have_content("#{@plant4.name}")
    end
  end

  it '' do
    
  end
end