class AddRentToScenarios < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :rent, :int
  end
end
