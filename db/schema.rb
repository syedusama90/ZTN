# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_27_161630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_details", force: :cascade do |t|
    t.string "CustomerName", null: false
    t.string "POC", null: false
    t.string "BillingAddress", null: false
    t.string "InstallationAddress", null: false
    t.string "AttendentContact", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoice_histories", force: :cascade do |t|
    t.string "invoiceMonth"
    t.string "invoiveNumber"
    t.string "invoiceAmount"
    t.string "Paid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # create_table "login", force: :cascade do |t|
  #   t.string "fname"
  #   t.string "lname"
  #   t.string "phone"
  #   t.string "email", default: "", null: false
  #   t.string "encrypted_password", default: "", null: false
  #   t.string "reset_password_token"
  #   t.datetime "reset_password_sent_at"
  #   t.datetime "remember_created_at"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.index ["email"], name: "index_login_on_email", unique: true
  #   t.index ["fname"], name: "index_login_on_fname"
  #   t.index ["lname"], name: "index_login_on_lname"
  #   t.index ["phone"], name: "index_login_on_phone"
  #   t.index ["reset_password_token"], name: "index_login_on_reset_password_token", unique: true
  # end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
