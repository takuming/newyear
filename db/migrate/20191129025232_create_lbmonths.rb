class CreateLbmonths < ActiveRecord::Migration[5.2]
  def change
    create_table :lbmonths do |t|
      t.text :jan
      t.text :feb, null: true, default: ""
      t.text :mar, null: true, default: ""
      t.text :apr, null: true, default: ""
      t.text :may, null: true, default: ""
      t.text :jun, null: true, default: ""
      t.text :jul, null: true, default: ""
      t.text :aug, null: true, default: ""
      t.text :sep, null: true, default: ""
      t.text :oct, null: true, default: ""
      t.text :nov, null: true, default: ""
      t.text :dec, null: true, default: ""
      t.references :Twentynineteen, foreign_key: true

      t.timestamps
    end
  end
end
