require 'AccountManagerYaml'

class AccountManagerFactory
  def self.get(user,type)
    if type == 'yaml'
      return AccountManagerYaml.new(user)
#  elsif type == 'mysql'
 #     return new AccountManagerMySQL(user)
    else
      return nil
    end
  end
end
