class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.date :date
      t.integer :project
      t.integer :status
      t.integer :priority
      t.integer :count
    end
  end
end
