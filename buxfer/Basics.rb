
class Array; include Comparable; def sum; inject(:+) ; end; end

class Basics
  attr_accessor :id,  :newId, :rev, :timestamp, :inactive
  def initialize
    @inactive = false
    @timestamp =  Time.now.gmtime.strftime("%Y%m%d%H%M%S").to_i
    @newId = nil
    @id = 1
    @rev = 1
  end

  def validate?
    true
  end
  def self.from_hash(a)
    h = self.new
    h.id = a[:id]
    h.rev = a[:rev]
    h.timestamp = a[:timestamp]
    h.inactive = a[:inactive]
    h
  end

  def to_hash
    @id = @newId unless @newId.nil?
    {:id => @id, :rev => @rev , :timestamp => @timestamp, :inactive => @inactive}
  end
end
