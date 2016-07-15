class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :active
      t.boolean :premium
      t.boolean :interview_first

      t.timestamps
    end
  end
end
