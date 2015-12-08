class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.text :current_availability

      t.timestamps null: false
    end
  end
end
