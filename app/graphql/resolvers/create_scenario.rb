class Resolvers::CreateScenario < GraphQL::Function
  argument :rent, !types.Int
  argument :otherIncome, types.Int
  argument :vacancyRate, types.Float
  argument :expenseRate, types.Float
  argument :targetCapRate, types.Float
  argument :listingPrice, types.Float
  argument :offerPrice, types.Float
  argument :closingCosts, types.Float
  argument :urgentRepairCosts, types.Float
  argument :eventualRepairCosts, types.Float
  argument :fairMarketValue, types.Float
  argument :afterRepairValue, types.Float
  argument :downPayment, types.Float
  argument :annualPercentageRate, types.Float
  argument :mortgageDuration, types.Float
  argument :monthlyPrincipalAndInterest, types.Float
  argument :capitalExpenditures, types.Float
  argument :maintenance, types.Float
  argument :insurance, types.Float
  argument :water, types.Float
  argument :gas, types.Float
  argument :electric, types.Float
  argument :management, types.Float
  argument :taxes, types.Float
  argument :vacancy, types.Float
  argument :miscellaneousExpenses, types.Float

  type Types::ScenarioType

  def call(_obj, args, ctx)
    byebug
    Scenario.create!(
      rent: args[:rent],
      other_income: args[:otherIncome],
      vacancy_rate: args[:vacancyRate],
      expense_rate: args[:expenseRate],
      target_cap_rate: args[:targetCapRate],
      listing_price: args[:listingPrice],
      offer_price: args[:offerPrice],
      closing_costs: args[:closingCosts],
      urgent_repair_costs: args[:urgentRepairCosts],
      eventual_repair_costs: args[:eventualRepairCosts],
      fair_market_value: args[:fairMarketValue],
      after_repair_value: args[:afterRepairValue],
      down_payment: args[:downPayment],
      annual_percentage_rate: args[:annualPercentageRate],
      mortgage_duration: args[:mortgageDuration],
      monthly_principal_and_interest: args[:monthlyPrincipalAndInterest],
      capital_expenditures: args[:capitalExpenditures],
      maintenance: args[:maintenance],
      insurance: args[:insurance],
      water: args[:water],
      gas: args[:gas],
      electric: args[:electric],
      management: args[:management],
      taxes: args[:taxes],
      vacancy: args[:vacancy],
      miscellaneous_expenses: args[:miscellaneousExpenses],
      # user: ctx[:current_user]
    )
  rescue ActiveRecord::RecordInvalid => e
    GraphQL::ExecutionError.new("Something went wrong: #{e.record.errors.full_messages.join(', ')}")
  end
end
