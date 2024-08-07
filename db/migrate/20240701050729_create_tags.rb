# frozen_string_literal: true

class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :post_event_id

      t.timestamps
    end
  end
end
