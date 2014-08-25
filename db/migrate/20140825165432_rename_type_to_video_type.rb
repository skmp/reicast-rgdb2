class RenameTypeToVideoType < ActiveRecord::Migration
  def change
  	rename_column :videos, :type, :video_type
  end
end
