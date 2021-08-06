Rails.application.routes.draw do
  resources :plots, only: [:index]
  resources :gardens, only: [:show]
  delete "/plots/:plot_id/plants/:plant_id",to: "plot_plants#destroy", as: 'plot_plant_delete'
end
