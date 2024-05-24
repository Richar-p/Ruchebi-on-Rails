# frozen_string_literal: true

# Create Hive entity
class CreateHives < ActiveRecord::Migration[7.1]
  def change
    create_table :hives do |t|
      t.string :name, null: false
      t.text :description
      t.float :weight, null: false
      t.timestamps
    end
  end
end
