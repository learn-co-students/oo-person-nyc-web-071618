# your code goes here
class Person
  attr_reader :name
  attr_writer :bank_account
  attr_accessor :happiness_index

  def initialize(name)
    @name = name
    @bank_account
  end

  def bank_account
    @bank_account = 25
  end

  def happiness
    @happiness_index = 8
    
  end
end
