
class TransactionManager
  attr_reader :user 

public
  def initialize(user)
    "default" if user.nil?
    @user=user
  end
  
  def readtransaction_owes( transaction )
    raise 'Method to be implemented'
  end

  def readTransaction(type, value)
    raise 'Method to be implemented'
  end

  def updateTransaction(data)
    writeTransaction(data)
  end
  
  def writetransaction_owes(data=[])
    raise 'Method to be implemented'
  end

  def writeTransaction(data={})
    raise 'Method be implemented'
  end
  
end