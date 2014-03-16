require 'Basics'

class Account < Basics
  attr_accessor :nickname, :type, :balance, :currency, :name
  def initialize
    @currency = 'INR'
  end

  def validate?
    true
  end

  def from_hash(a)

    h = super(a)
    h.name = a[:name]
    h.nickname = a[:nickname]
    h.type = a[:type]
    h.balance = a[:balance]
    h.currency = a[:currency]

    h
  end

  def to_hash
    super.merge( :name => @name, :nickname => @nickname, :type => @type , :balance => @balance, :currency => @currency)
  end

end
