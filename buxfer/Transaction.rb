require 'Basics'

class Transaction < Basics
attr_accessor :desc, :tags, :account, :cost, :date, :details, :author

  def validate?
    true
  end

  def self.from_hash(a)
    h = super(a)
    h.desc = a[:desc]
    h.tags = a[:tags]
    h.account = a[:account]
    h.cost = a[:cost]
    h.date = a[:date]
    h.author = a[:author]
    
    h

  end
  def to_hash
    super.merge( :desc => @desc , :tags => @tags , :account => @account, :cost => @cost , :date => @date, :author => @author)
  end
end
