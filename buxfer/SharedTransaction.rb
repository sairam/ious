require 'TransactionCalculator'
require 'Transaction'

class SharedTransaction < Transaction 
  attr_accessor :moneylenders, :participants, :get, :owe
  
  def from_hash(a)
    h = super(a)
    h.moneylenders = a[:moneylenders]
    h.participants = a[:participants]
    h.get = a[:get]
    h.owe = a[:owe]

    h

  end
  
  def to_hash
    super.merge(:moneylenders => @moneylenders, :participants => @participants, :get => @get, :owe => @owe)  
  end

  def validate?
    @participants.values.sum == @moneylenders.values.sum
  end

  def make_splits
    return "Error" unless validate?
    total={}

    (@moneylenders.keys + @participants.keys).uniq.each do |key|
      total[key] = @participants[key].to_i - @moneylenders[key].to_i
    end

    @owe, @get = TransactionCalculator.get_owes(total)
  end

end
