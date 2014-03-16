
require 'TransactionManagerFactory'
require 'AccountManagerFactory'
require 'SettingsManagerFactory'

require 'SharedTransaction'
require 'Account'

format = 'yaml'


c = SettingsManagerFactory.get(userid,format)
username = c.username

a = TransactionManagerFactory.get(username,format)
b = AccountManagerFactory.get(username,format)


t = SharedTransaction.new
t.desc = "Movie DVD"
t.tags = ["movie","entertainment"]
t.account = "Wallet"
#t.cost = -121.44 # varies per person , there are 2 things to track . to owe, if spent or not
t.date = "2011-01-27"
t.author = "sairam"

t.moneylenders = {"Sairam" => 100 , "Pramod" => 123 , "Harith" => 32}
t.participants = {"Sairam" => 123 , "Naveen" => 120 , "Manohar" => 12}
t.make_splits

# for i in each person. same id should be present 
# before you save, make sure you compare it with the old one so that we are sure that we add extra entries for non-modified ones

a.writeTransaction(t)

# t.all_participants.each do |name|
#   AccountManagerFactory.get(name,format)
#   t.owes_to
# 
# 
# end
# 
# 
# #a = TransactionManager.new('sairam')
# 
# 
# ac = Account.new
# ac.id = b.getNextId
# ac.nickname = "Wallet"
# ac.type = "Daily"
# ac.balance = 1000.00
# ac.currency = "INR"
# ac.name = "Other"
# 
# b.add(ac)
# b.update(ac)
# puts b.readByNickName('Wallet').inspect
# 
# puts a.readTransaction('account','Wallet').inspect
# 
# t = Transaction.new
# t.desc = "Jalsa DVD"
# t.tags = ["movie","entertainment"]
# t.account = b.accountByName('Wallet')
# t.cost = -11.44
# t.date = "2011-02-13"
# t.author = "sairam"
# t.id = t.timestamp if t.rev == 1
# 
# a.writeTransaction(t)
 
#item={:desc=>"Movie DVD - Jalsa", :tags=>["movie","entertainment"], :account=>"Wallet", :cost=>125.32, :date=>"2011-10-20"}

#a.writeTransaction(t.to_hash)
#puts a.readTransaction(:date,'2011-01-27')