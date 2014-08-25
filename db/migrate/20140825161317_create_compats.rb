class CreateCompats < ActiveRecord::Migration
  def change
    create_table :compats do |t|
      t.references :game, index: true
      t.string :build
      t.integer :stability
      t.integer :playability
      t.string :quirks

      t.timestamps
    end
  end
end
