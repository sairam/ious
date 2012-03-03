# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120303100924) do

  create_table "transactions", :force => true do |t|
    t.integer  "account_id",                         :null => false
    t.string   "title",                              :null => false
    t.float    "amount",                             :null => false
    t.datetime "date",                               :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "transaction_type_id", :default => 0, :null => false
    t.integer  "status",              :default => 0, :null => false
  end

  add_index "transactions", ["account_id"], :name => "index_transactions_on_account_id"
  add_index "transactions", ["amount"], :name => "index_transactions_on_amount"
  add_index "transactions", ["date"], :name => "index_transactions_on_date"
  add_index "transactions", ["status"], :name => "index_transactions_on_status"
  add_index "transactions", ["title"], :name => "index_transactions_on_title"
  add_index "transactions", ["transaction_type_id"], :name => "index_transactions_on_transaction_type_id"

end
