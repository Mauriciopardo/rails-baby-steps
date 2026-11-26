class CreateGoals < ActiveRecord::Migration[8.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :target
      t.integer :achieved
      t.date :due_on

      t.timestamps
    end
  end
end
