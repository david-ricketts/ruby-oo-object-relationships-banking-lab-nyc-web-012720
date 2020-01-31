require_relative './bank_account.rb'

class Transfer
  # your code here


    @@account = 0 

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
    if self.valid? && @@account <= 1
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount
      @@account += 1
      @status = "complete"
    end 
  end
  
  

end
