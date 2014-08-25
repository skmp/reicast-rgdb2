class RenameHashToDiscHash < ActiveRecord::Migration
  def change
  	rename_column :discs, :hash, :disc_hash
  end
end
