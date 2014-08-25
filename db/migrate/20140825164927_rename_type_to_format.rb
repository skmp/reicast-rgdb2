class RenameTypeToFormat < ActiveRecord::Migration
  def change
  	rename_column :discs, :type, :format
  end
end
