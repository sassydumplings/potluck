class CreateItemsPeopleBridge < ActiveRecord::Migration
  def change
      create_table :items_people, :id => false do |t|
        t.integer  :item_id
        t.integer  :person_id
     end
  end
end
