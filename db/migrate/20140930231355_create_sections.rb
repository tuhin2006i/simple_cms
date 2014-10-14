class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.integer "page_id"
      #t.references :page
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => true
      t.string "content_type"
      t.string "content"
      t.timestamps
    end
    add_index("sections", "page_id")
  end
  def down
    drop_table :sections
  end
end
