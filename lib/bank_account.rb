class BankAccount
  attr_reader :name
   attr_accessor :balance , :status

   def initialize(name)
     @name = name
     @balance = 1000
     @status = 'open'
   end

   # def balance
   #   @balance
   # end
   #
   # def status
   #   @status
   # end

  def deposit(num_to_deposit)
    self.balance += num_to_deposit
  end

  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    status == 'open' && balance > 0
  end

  def close_account
    self.status = 'closed'
  end

end