require 'yaml'

module YamlOperations

Revision = :rev

SearchTypeDefaults = {:desc => 'search', :cost => 'eq' , :account => 'eq' ,:tags => 'eq', :author => 'search' }

private

  def validate?(entry)
    entry.validate?
  end

  def loadData
    data = {}
    File.open(fileName) do |io|
      YAML::load_documents(io) do |a|
        data[a[uniqId]] = a unless data[a[uniqId]] and data[a[uniqId]][Revision] > a[Revision]
      end
    end
    data
  end
  
  def typeOperation(type, val,value,operation = nil )
    operation = SearchTypeDefaults[type] || SearchTypeDefaults['default'] if operation.nil?

    
    if operation == 'search'
      return val =~ Regexp.new(Regexp.escape(value),true) # case insensitive search 
    elsif operation == 'ge'
      return val >= value
    elsif operation == 'le'
      return val <= value
    elsif operation == 'eq'
      return val == value
    else
      return val == value
    end
  end
  
  def filterData(data,type,value)
    fd=[]
    data = loadData if data.nil?
    fd if type.nil? or value.nil?
    
    data.each_value do |e|
      fd.push e if e.key?(type.to_sym) and typeOperation(type.to_sym, e[type.to_sym], value)
    end
    fd
  end

  def writeData(list)
    File.open(fileName,'a+') do |out| 
      list.each do | entry |
        YAML.dump(entry.to_hash,out) if validate?(entry)
      end
    end
  end
  
  
end