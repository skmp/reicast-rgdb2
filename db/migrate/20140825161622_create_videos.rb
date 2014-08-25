class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :type
      t.references :disc, index: true
      t.string :youtube_id
      t.string :build
      t.string :hardware
      t.string :desc

      t.timestamps
    end
  end
end
