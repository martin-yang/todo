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
end
