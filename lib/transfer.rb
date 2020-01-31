require_relative './bank_account.rb'

class Transfer
  # your code here
  attr_accessor :sender, :receiver ,:amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end 
  
  def valid?
    self.status == "open"
    
  end 

end
