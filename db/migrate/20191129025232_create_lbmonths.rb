class CreateLbmonths < ActiveRecord::Migration[5.2]
  def change
    create_table :lbmonths do |t|
      t.text :jan
      t.text :feb
      t.text :mar
      t.text :apr
      t.text :may
      t.text :jun
      t.text :jul
      t.text :aug
      t.text :sep
      t.text :oct
      t.text :nov
      t.text :dec
      t.references :Twentynineteen, foreign_key: true

      t.timestamps
    end
  end
end
