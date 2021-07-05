class Student < ActiveRecord::Base
  # attr_accessor :active, :first_name, :last_name
  # def initialize(first_name, last_name, active= 0)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @active = active
  # end
  def to_s
    self.first_name + " " + self.last_name
  end
end