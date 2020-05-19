class Transfer
  attr_accessor :sender, :reciever, :status, :amount
  # attr_reader :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @reciever = receiver 
    @amount = amount
    @status = 'pending'
  end
  
end
