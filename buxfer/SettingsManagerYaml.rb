require 'yaml'
require 'YamlOperations'
require 'SettingsManager'

class SettingsManagerYaml < SettingsManager

  include YamlOperations

  private

  def fileName
    "test_settings_"+@user.to_s+".yaml"
  end

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