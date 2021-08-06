class Plant < ApplicationRecord
  # validates :
  # belongs_to :
  has_many :plot_plants
  has_many :plots, through: :plot_plants
end