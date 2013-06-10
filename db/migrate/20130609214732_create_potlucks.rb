class CreatePotlucks < ActiveRecord::Migration
  def  change
      create_table :potlucks do |t|
            t.string :name
            t.datetime :timestamp
      end
  end
end
