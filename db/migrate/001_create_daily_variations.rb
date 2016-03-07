class CreateDailyVariations < ActiveRecord::Migration
  def change
    create_table :daily_variations do |t|
      t.date :date
      t.integer :project
      t.integer :priority
      t.integer :count
    end
  end
end
