require 'active_record'
require './database_configuration'

class EmployeeReviewsMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :salary, precision: 8, scale:2
      t.boolean :satisfactory
      t.string :review
      t.timestamps
      t.references :department
    end

  def change
    create_table :department do |t|
      t.string :name
      t.string :review
    end
  end
end

EmployeeReviewsMigration.migrate(:up)
