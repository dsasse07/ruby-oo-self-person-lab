# your code goes here
require 'pry'
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 #Max @ 10, Min @ 0
        @hygiene = 8 #Max @ 10, Min @ 0

    end

    attr_reader :name, :hygiene, :happiness
    attr_writer
    attr_accessor :bank_account

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)            
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness +=1
            person.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def happiness= (num)
        @happiness = num
        happy_check
    end 

    def hygiene= (num)
        @hygiene = num
        hygiene_check
    end

    private

    def happy_check
        self.happiness > 10 ? @happiness = 10 : self.happiness
        self.happiness < 0 ? @happiness = 0 : self.happiness
    end

    def hygiene_check
        self.hygiene > 10 ? @hygiene = 10 : self.hygiene
        self.hygiene < 0 ? @hygiene = 0 : self.hygiene
    end

end

danny = Person.new("Danny")
nicole = Person.new("Nicole")

# binding.pry
# 0