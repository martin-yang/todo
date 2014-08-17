ActiveRecord::Schema.define(version: 20140708222957) do


  # enable_extension "plpgsql"
  # enable_extension "hstore"

  create_table "tasks", force: true do |t|
    t.string "content"
    t.string "state"
    t.integer "task_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_dates", force: true do |t|
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_dates", force: true do |t|
    t.string "start_hour"
    t.string "end_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table :users , force: true do |t|
    ## Database authenticatable
    t.string :email,              null: false, default: ""
    t.string :encrypted_password, null: false, default: ""

    ## Recoverable
    t.string   :reset_password_token
    t.datetime :reset_password_sent_at

    ## Rememberable
    t.datetime :remember_created_at

    ## Trackable
    t.integer  :sign_in_count, default: 0, null: false
    t.datetime :current_sign_in_at
    t.datetime :last_sign_in_at
    t.string   :current_sign_in_ip
    t.string   :last_sign_in_ip

    ## Confirmable
    # t.string   :confirmation_token
    # t.datetime :confirmed_at
    # t.datetime :confirmation_sent_at
    # t.string   :unconfirmed_email # Only if using reconfirmable

    ## Lockable
    # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
    # t.string   :unlock_token # Only if unlock strategy is :email or :both
    # t.datetime :locked_at


    t.timestamps
  end

  add_index :users, :email,                unique: true
  add_index :users, :reset_password_token, unique: true
  # add_index :users, :confirmation_token,   unique: true
  # add_index :users, :unlock_token,         unique: true
end
