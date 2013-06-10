class CreateItems < ActiveRecord::Migration
  def up
      create_table :items do |t|
        t.string   :name
        t.integer  :tag_id
      end
    end
end
