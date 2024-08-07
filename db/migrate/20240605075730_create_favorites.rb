# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :post_event_id,         null: false
      t.integer :user_id,               null: false

      t.timestamps
    end
    add_index :favorites, [:user_id, :post_event_id], unique: true
  end
end
