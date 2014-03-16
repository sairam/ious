
class AccountManager
  attr_reader :user 

public
  def initialize(user)
    "default" if user.nil?
    @user=user
  end

  def readByName(name)
    raise 'Method to be implemented'
  end

  def read
    raise 'Method to be implemented'
  end

  def update(data)
    add(data)
  end

  def add(data=[])
    raise 'Method to be implemented'
  end


  def add(data={})
    raise 'Method be implemented'
  end
  
end