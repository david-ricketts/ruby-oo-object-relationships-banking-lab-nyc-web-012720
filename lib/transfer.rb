class Transfer
  # your code here
  attr_accessor :name, :other_name ,:amount
  
  def initialize(name, other_name, amount)
    @name = name 
    @other_name = other_name
    @amount = amount
  end 
end
