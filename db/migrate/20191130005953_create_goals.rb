class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title, null: true, default: ""
      t.text :action, null: true, default: ""
      t.text :problem, null: true, default: ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
