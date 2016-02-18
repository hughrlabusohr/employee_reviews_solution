require 'active_record'

# ActiveRecord::Base.establish_connection(
#   adapter:  'sqlite3',
#   database: 'development.sqlite3'
# )

class EmployeeReviewsMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.decimal :salary, precision: 8, scale:2
      t.boolean :satisfactory
      t.string :review
      t.timestamps null: false
      t.references :department
    end

    create_table :departments do |t|
      t.string :name
      t.string :review
      t.string :staff
      t.timestamps null: false
    end

    # create_table :staff do |t|
    #   t.references :department
    #   t.references :employees
    #   t.timestamps null: false
    # end
  end
end

# EmployeeReviewsMigration.migrate(:up)
