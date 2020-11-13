ActiveRecord::Schema.define(version: 2020_11_11_081452) do

  enable_extension "plpgsql"

  create_table "murmurs", force: :cascade do |t|
    t.text "content"
  end

end
