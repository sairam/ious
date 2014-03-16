module TransactionCalculator
  private
  def self.hp(d)
    val=0 ; d.each {|k,v| val=[k,v] if v>val[1]  } ; val
  end
  def self.lp(d)
    val=0; d.each { |k,v| val=[k,v] if v<val[1] } ;  val
  end
  public
  def self.get_owes(d)

    transaction_owes={}
    transaction_gets={}
    while 1 do
      h = hp(d) ; l = lp(d) ;
      if h[1] == 0 and l[1] == 0
        return [transaction_owes,transaction_gets]
      end
      
      val = h[1] + l[1]
      if val > 0
        puts h[0] +" owes " + l[0] + " total of "+(-l[1]).to_s
        transaction_owes[h[0]]=[] unless transaction_owes.key?(h[0])
        transaction_owes[h[0]] += [l[0],-l[1]]

        transaction_gets[l[0]]=[] unless transaction_gets.key?(l[0])
        transaction_gets[l[0]] += [h[0],-l[1]]

        d[l[0]] -= l[1]
        d[h[0]] += l[1]
      elsif val < 0
        puts h[0] +" owes " + l[0] + " total of "+h[1].to_s 
        transaction_owes[h[0]]=[] unless transaction_owes.key?(h[0])
        transaction_owes[h[0]] += [l[0],h[1]]

        transaction_gets[l[0]]=[] unless transaction_gets.key?(l[0])
        transaction_gets[l[0]] += [h[0],h[1]]

        d[l[0]] += h[1]
        d[h[0]] -= h[1]
      else
        puts h[0] +" owes " + l[0] + " total of "+h[1].to_s
        transaction_owes[h[0]]=[] unless transaction_owes.key?(h[0])
        transaction_owes[h[0]] += [l[0],h[1]]

        transaction_gets[l[0]]=[] unless transaction_gets.key?(l[0])
        transaction_gets[l[0]] += [h[0],h[1]]

        d[l[0]] = 0
        d[h[0]] = 0
      end
    end
  end
end