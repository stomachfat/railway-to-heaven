# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180917052404) do

  create_table "links", force: :cascade do |t|
    t.string "url"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rent"
    t.integer "other_income"
    t.decimal "vacancy_rate", precision: 12, scale: 2
    t.decimal "expense_rate", precision: 12, scale: 2
    t.decimal "target_cap_rate", precision: 12, scale: 2
    t.decimal "listing_price", precision: 12, scale: 2
    t.decimal "offer_price", precision: 12, scale: 2
    t.decimal "closing_costs", precision: 12, scale: 2
    t.decimal "urgent_repair_costs", precision: 12, scale: 2
    t.decimal "eventual_repair_costs", precision: 12, scale: 2
    t.decimal "fair_market_value", precision: 12, scale: 2
    t.decimal "after_repair_value", precision: 12, scale: 2
    t.decimal "down_payment", precision: 12, scale: 2
    t.decimal "annual_percentage_rate", precision: 12, scale: 2
    t.decimal "mortgage_duration", precision: 12, scale: 2
    t.decimal "monthly_principal_and_interest", precision: 12, scale: 2
    t.decimal "capital_expenditures", precision: 12, scale: 2
    t.decimal "maintenance", precision: 12, scale: 2
    t.decimal "insurance", precision: 12, scale: 2
    t.decimal "water", precision: 12, scale: 2
    t.decimal "gas", precision: 12, scale: 2
    t.decimal "electric", precision: 12, scale: 2
    t.decimal "management", precision: 12, scale: 2
    t.decimal "taxes", precision: 12, scale: 2
    t.decimal "vacancy", precision: 12, scale: 2
    t.decimal "miscellaneous_expenses", precision: 12, scale: 2
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "votes", force: :cascade do |t|
    t.integer "link_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["link_id"], name: "index_votes_on_link_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

end
