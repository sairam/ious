require 'yaml'
require 'YamlOperations'
require 'TransactionManager'

class TransactionManagerYaml < TransactionManager

include YamlOperations

  private
    
  def fileName
    "test_transactions_"+@user.to_s+".yaml"
  end

  def uniqId
    :id
  end

  public

  def readtransaction_owes( transaction )
    loadData.values
  end
  
  def readTransactions
    loadData.values
  end
  
  def readTransaction(type, value)
    data = loadData
    filterData(data,type,value)
  end

  def writetransaction_owes(data=[])
    writeData(data)
  end

  def writeTransaction(data)
    writeData([data])
  end

end
