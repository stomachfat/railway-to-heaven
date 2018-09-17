Types::ScenarioType = GraphQL::ObjectType.define do
  name 'Scenario'

  field :id, !types.ID
  ### =^.^= does this work!?
  field :rent, !types.Int
  field :otherIncome, types.Int,
    "Any non-rent income, such as storage fees, laundry income, etc",
    property: :other_income

  field :vacancyRate, types.Float, property: :vacancy_rate
  field :expenseRate, types.Float, property: :expense_rate
  field :targetCapRate, types.Float, property: :target_cap_rate
  field :listingPrice, types.Float, property: :listing_price
  field :offerPrice, types.Float, property: :offer_price
  field :closingCosts, types.Float, property: :closing_costs
  field :urgentRepairCosts, types.Float, property: :urgent_repair_costs
  field :eventualRepairCosts, types.Float, property: :eventual_repair_costs
  field :fairMarketValue, types.Float, property: :fair_market_value
  field :afterRepairValue, types.Float, property: :after_repair_value
  field :downPayment, types.Float, property: :down_payment
  field :annualPercentageRate, types.Float, property: :annual_percentage_rate
  field :mortgageDuration, types.Float, property: :mortgage_duration
  field :monthlyPrincipalAndInterest, types.Float, property: :monthly_principal_and_interest
  field :capitalExpenditures, types.Float, property: :capital_expenditures
  field :maintenance, types.Float, property: :maintenance
  field :insurance, types.Float, property: :insurance
  field :water, types.Float, property: :water
  field :gas, types.Float, property: :gas
  field :electric, types.Float, property: :electric
  field :management, types.Float, property: :management
  field :taxes, types.Float, property: :taxes
  field :vacancy, types.Float, property: :vacancy
  field :miscellaneousExpenses, types.Float, property: :miscellaneous_expenses
end
