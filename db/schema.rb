ActiveRecord::Schema.define(version: 20140708222957) do


  # enable_extension "plpgsql"
  # enable_extension "hstore"

  create_table "tasks", force: true do |t|
    t.string "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
end
