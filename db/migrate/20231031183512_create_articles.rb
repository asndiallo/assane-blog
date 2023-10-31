# frozen_string_literal: true

# Migration to create articles table
class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
