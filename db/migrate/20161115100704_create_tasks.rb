class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :memo
      t.integer :priority
      t.float :estimate_hour
      t.float :actual_hour
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :status
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
