class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :title
      t.string :desc

      t.timestamps
    end
  end
end
