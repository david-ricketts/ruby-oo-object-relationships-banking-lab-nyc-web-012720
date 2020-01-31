class Transfer
  # your code here
  attr_accessor :sender, :other_name ,:amount
  
  def initialize(sender, other_name, amount)
    @sender = sender 
    @other_name = other_name
    @amount = amount
  end 
  
  
end
