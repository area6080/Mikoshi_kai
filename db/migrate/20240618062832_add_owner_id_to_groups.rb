# frozen_string_literal: true

class AddOwnerIdToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :owner_id, :integer
  end
end
