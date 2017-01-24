class AddDrawToGame < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :draw, :array
  end
end
