class CreateStoretags < ActiveRecord::Migration[7.0]
  def change
    create_table :storetags do |t|
      t.string :term
      t.string :pattern_type
      t.string :main_tag
      t.string :sec_tag
      t.string :thir_tag
      t.integer :score
      t.string :status

      t.timestamps
    end
  end
end
