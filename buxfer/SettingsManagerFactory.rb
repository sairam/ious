require 'SettingsManagerYaml'
#require 'SettingsManagerMySQL'

class SettingsManagerFactory
  def self.get(user,type)
    if type == 'yaml'
      return SettingsManagerYaml.new(user)
#  elsif type == 'mysql'
 #     return new TransactionManagerMySQL(user)
    else
      return nil
    end
  end
end