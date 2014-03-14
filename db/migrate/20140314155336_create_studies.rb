class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :name
      t.string :state, index: true
      t.string :units, index: true
      t.integer :start_date, index: true
      t.integer :end_date, index: true

      t.timestamps
    end
  end
end
