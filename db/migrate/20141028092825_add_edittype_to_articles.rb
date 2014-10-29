class AddEdittypeToArticles < ActiveRecord::Migration
  def change
    add_column :articles ,:edit_type,:integer,:null=>false,:default=> 1
  end
end
