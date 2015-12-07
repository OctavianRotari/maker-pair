class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :status
      t.string :name
      t.string :surname
      t.string :language
      t.string :expertise
      t.string :occupation
      t.string :location

      t.timestamps null: false
    end
  end
end
