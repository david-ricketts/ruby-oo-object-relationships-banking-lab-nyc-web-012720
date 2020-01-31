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
    if self.sender.status == "open" && self.receiver.status == "open"
      true 
    else 
      false 
    end
  end 

end
