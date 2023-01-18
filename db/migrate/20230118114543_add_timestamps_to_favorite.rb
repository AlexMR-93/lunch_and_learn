class AddTimestampsToFavorite < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :created_at, :datetime
    add_column :favorites, :updated_at, :datetime
  end
end
