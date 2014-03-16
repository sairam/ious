require 'AccountManager'

require 'YamlOperations'

class AccountManagerYaml < AccountManager

include YamlOperations
  
  private
  
  def fileName
    "test_accounts_"+@user.to_s+".yaml"
  end
  
  def uniqId
    :id
  end
    
  public

  def readByNickName(value)
    filterData(nil,'nickname',value)
  end
  
  def read
    loadData.values
  end
  
  def read(type, value)
    data = loadData
    filterData(data,type,value,'eq')
  end

  def add(data=[])
    writeData(data)
  end

  def add(data)
    writeData([data])
  end
  
  def getNextId
    loadData.keys.max+1
  end

end