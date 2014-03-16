
class SettingsManager < BasicManager
  attr_reader :user 

public
  def initialize(user)
    "default" if user.nil?
    @user=user
  end
  
  def read
    raise 'Method to be implemented'
  end
  def read(type, value)
    raise 'Method to be implemented'
  end

  def update(data)
    raise 'Method to be implemented'
  end
  
  def write(data)
    raise 'Method to be implemented'
  end
  
end