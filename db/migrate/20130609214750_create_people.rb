class CreatePeople < ActiveRecord::Migration
  def up
      create_table :people do |t|
        t.string  :name
      end
  end
end
