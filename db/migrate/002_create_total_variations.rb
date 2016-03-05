class CreateTotalVariations < ActiveRecord::Migration
  def change
    create_table :total_variations do |t|
      t.date :date
      t.interger :project
      t.integer :priority
      t.integer :count
    end
  end
end
