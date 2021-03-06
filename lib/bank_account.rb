class BankAccount

  attr_accessor :balance, :status
  attr_reader  :name

  def initialize(name, balance=1000)
    @name = name
    @balance = balance
    @status = "open"
  end

  def deposit(amount)
    @balance += (amount)
  end

#"Your balance is $#{avi.balance}."
  def display_balance
    return "Your balance is $#{self.balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else
      return false
    end
  end
  def close_account
    self.status = "closed"
  end

end
