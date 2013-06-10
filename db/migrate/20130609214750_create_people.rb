class CreatePeople < ActiveRecord::Migration
  def change
    create_table   :people do |t|
          t.string :name
          t.string :phone
          t.string :email
      end
  end
end
