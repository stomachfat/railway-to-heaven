class AddColumnsToScenario < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :vacancy_rate, :decimal, precision: 12, scale: 2
    add_column :scenarios, :expense_rate, :decimal, precision: 12, scale: 2
    add_column :scenarios, :target_cap_rate, :decimal, precision: 12, scale: 2
    add_column :scenarios, :listing_price, :decimal, precision: 12, scale: 2
    add_column :scenarios, :offer_price, :decimal, precision: 12, scale: 2
    add_column :scenarios, :closing_costs, :decimal, precision: 12, scale: 2
    add_column :scenarios, :urgent_repair_costs, :decimal, precision: 12, scale: 2
    add_column :scenarios, :eventual_repair_costs, :decimal, precision: 12, scale: 2
    add_column :scenarios, :fair_market_value, :decimal, precision: 12, scale: 2
    add_column :scenarios, :after_repair_value, :decimal, precision: 12, scale: 2
    add_column :scenarios, :down_payment, :decimal, precision: 12, scale: 2
    add_column :scenarios, :annual_percentage_rate, :decimal, precision: 12, scale: 2
    add_column :scenarios, :mortgage_duration, :decimal, precision: 12, scale: 2
    add_column :scenarios, :monthly_principal_and_interest, :decimal, precision: 12, scale: 2
    add_column :scenarios, :capital_expenditures, :decimal, precision: 12, scale: 2
    add_column :scenarios, :maintenance, :decimal, precision: 12, scale: 2
    add_column :scenarios, :insurance, :decimal, precision: 12, scale: 2
    add_column :scenarios, :water, :decimal, precision: 12, scale: 2
    add_column :scenarios, :gas, :decimal, precision: 12, scale: 2
    add_column :scenarios, :electric, :decimal, precision: 12, scale: 2
    add_column :scenarios, :management, :decimal, precision: 12, scale: 2
    add_column :scenarios, :taxes, :decimal, precision: 12, scale: 2
    add_column :scenarios, :vacancy, :decimal, precision: 12, scale: 2
    add_column :scenarios, :miscellaneous_expenses, :decimal, precision: 12, scale: 2
  end
end
