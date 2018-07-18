# your code goes here
require 'pry'

class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(points)
    if points <= 10 && points > 0
      @happiness = points
    elsif points > 10
      @happiness = 10
    elsif points <= 0
      @happiness = 0
    end
  end

  def hygiene=(num)
    if num <= 10 && num > 0
      @hygiene = num
    elsif num > 10
      @hygiene = 10
    elsif num <= 0
      @hygiene = 0
    end
  end

end

bob = Person.new("Bob")
# binding.pry
