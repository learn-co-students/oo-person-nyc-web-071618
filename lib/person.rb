require 'pry'

class Person
attr_reader :name
attr_writer :bank_account
attr_accessor :happiness, :hygiene, :bank_account



def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
  @name = name
  @happiness = happiness
  @hygiene = hygiene
  @bank_account = bank_account

end

 def happiness=(happy_points)
   if happy_points > 10  #setter method
     @happiness = 10
   elsif happy_points < 0
     @happiness = 0
   else
     @happiness = happy_points
   end
 end
 def hygiene=(happy_points)
   if happy_points > 10  #setter method
     @hygiene = 10
   elsif happy_points < 0
     @hygiene  = 0
   else
     @hygiene  = happy_points
   end
 end

 def happy?
   if @happiness > 7
     return true
   else false
   end
 end

 def clean?
   if @hygiene > 7
     return true
   else false
   end
 end

 def get_paid(salary)
   @bank_account += salary
   return "all about the benjamins"
 end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
       "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
       'blah blah sun blah rain'
     else
       "blah blah blah blah blah"
    end
  end
end #end Person class
person = Person.new("Jin")
