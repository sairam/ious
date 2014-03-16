require 'TransactionManagerYaml'
#require 'TransactionManagerMySQL'

class TransactionManagerFactory
  def self.get(user,type)
    if type == 'yaml'
      return TransactionManagerYaml.new(user)
#  elsif type == 'mysql'
 #     return new TransactionManagerMySQL(user)
    else
      return nil
    end
  end
end
