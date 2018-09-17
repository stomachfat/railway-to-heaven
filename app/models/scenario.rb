class Scenario < ApplicationRecord
  validates :rent, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :other_income, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :vacancy_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :expense_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :target_cap_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :listing_price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :offer_price, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :closing_costs, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :urgent_repair_costs, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :eventual_repair_costs, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :fair_market_value, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :after_repair_value, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :down_payment, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :annual_percentage_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :mortgage_duration, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :monthly_principal_and_interest, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :capital_expenditures, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :maintenance, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :insurance, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :water, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :gas, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :electric, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :management, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :taxes, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :vacancy, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :miscellaneous_expenses, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
