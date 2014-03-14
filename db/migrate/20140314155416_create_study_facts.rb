class CreateStudyFacts < ActiveRecord::Migration
  def change
    create_table :study_facts do |t|
      t.integer :year, index: true
      t.integer :value, index: true
      t.references :study
      t.timestamps
    end
  end
end
