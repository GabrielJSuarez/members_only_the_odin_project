# frozen_string_literal: true

class AddInfoToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
  end
end
