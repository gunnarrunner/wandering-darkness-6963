class Garden < ApplicationRecord
  has_many :plots

  def fast_unique_plants
    plots.joins(:plants)
          .select('plants.*')
          .where("plants.days_to_harvest < 100")
          .distinct
          .pluck(:name)
  end
end
