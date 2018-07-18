# your code goes here

require 'pry'
class Person
  attr_reader :name
  # attr_writer
  attr_accessor :happiness, :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
  end

  def happiness=(index)
    if index > 10
      @happiness = 10
    elsif index < 0
      @happiness = 0
    else
      @happiness = index
    end
  end

end
