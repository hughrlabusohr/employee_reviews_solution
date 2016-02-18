require './employee'

class Department < ActiveRecord::Base
  has_many :employees
  # attr_reader :name, :staff, :review
  #
  # def initialize(department_name)
  #   @name = department_name
  #   @staff = []
  # end
  #
  def add_employee(new_employee)
    staff = []
    staff << new_employee
  end

  def department_salary
    self.reduce(0.0) {|sum, e| sum + e.salary}
  end

  def add_employee_review(review)
    self.review = review
  end

  def department_raise(alloted_amount)
    raise_eligible = staff.select {|e| yield(e)}
    amount = alloted_amount / raise_eligible.length
    raise_eligible.each {|e| e.raise_by_amount(amount)}
  end
end
