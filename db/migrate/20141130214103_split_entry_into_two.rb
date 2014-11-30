class SplitEntryIntoTwo < ActiveRecord::Migration
  def change
    rename_column :entries, :url, :url_holarse
    add_column :entries, :url_gtuxtv, :string
  end
end
