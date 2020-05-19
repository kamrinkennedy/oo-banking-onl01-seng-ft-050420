class Transfer
  attr_accessor :sender, :reciever, :status, :amount
  # attr_reader :amount
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever 
    @amount = amount
    @status = 'pending'
  end
  
end
