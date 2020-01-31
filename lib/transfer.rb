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
    if self.sender.valid? && self.receiver.valid? 
      true 
    else 
      false 
    end
  end 
  
  def execute_transaction
    if self.valid?
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      "complete"
    end 
  end 

end
