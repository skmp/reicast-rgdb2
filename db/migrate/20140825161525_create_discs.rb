class CreateDiscs < ActiveRecord::Migration
  def change
    create_table :discs do |t|
      t.references :game, index: true
      t.string :type
      t.string :hash
      t.string :fingerprint
      t.string :region
      t.string :version
      t.integer :seq_num
      t.integer :seq_count

      t.timestamps
    end
  end
end
