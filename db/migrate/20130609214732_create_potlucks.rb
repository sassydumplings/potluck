class CreatePotlucks < ActiveRecord::Migration
  def up
      create_table :potlucks do |t|
        t.string  :name
        t.date    :date
        t.integer :item_id
      end
    end
  end
