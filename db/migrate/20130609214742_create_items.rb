class CreateItems < ActiveRecord::Migration
  def  change
    create_table :items do |t|
        t.string :name
        t.integer :potluck_id
        t.integer :person_id
      end
  end
end
