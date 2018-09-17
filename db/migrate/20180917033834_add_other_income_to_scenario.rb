class AddOtherIncomeToScenario < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :other_income, :int
  end
end
