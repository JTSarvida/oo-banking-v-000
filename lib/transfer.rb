class Transfer
  # your code here
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiever, amount)
    @sender = sender
    @receiver = receiever
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if valid? && @status = "pending"
      @sender -= @amount
      @receiver += @amount
      @status = "complete"
    end
  end
end
