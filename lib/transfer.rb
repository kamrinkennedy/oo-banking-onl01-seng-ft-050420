class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  # attr_reader :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver 
    @amount = amount
    @status = 'pending'
  end
  
  def valid? 
    sender.valid? && receiver.valid? ? true : false
  end
  
  def execute_transaction 
    if (self.valid? && sender.balance >= amount && self.status == 'pending')
      sender.balance -= amount
      receiver.balance += amount
      self.status = 'complete'
    else 
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
  end
  
end
