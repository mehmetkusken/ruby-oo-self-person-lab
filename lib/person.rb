class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happiness
        @happiness #getter 
    end
    def happiness=(happiness)
        @happiness = happiness #setter
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
        @happiness = 0
    else 
        @happiness
        end
    end
    def hygiene
    @hygiene
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
     if @hygiene > 10
        @hygiene = 10
     elsif @hygiene < 0
        @hygiene = 0
    else 
     @hygiene
        end
    end
    def bank_account
        @bank_account
    end
    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
        def get_paid(salary)
         @bank_account += salary
        return "all about the benjamins"
        end
        def take_bath
         self.hygiene += 4 #why this works not the other way
         return "♪ Rub-a-dub just relaxing in the tub ♫"
        end
        def work_out 
            self.hygiene -= 3
            self.happiness += 2
            "♪ another one bites the dust ♫"
        end 
        def call_friend(friend)
            self.happiness += 3
            friend.happiness += 3
             "Hi #{friend.name}! It's #{self.name}. How are you?"
         end
         def start_conversation(person, topic)
            if topic == "politics"
              self.happiness= @happiness - 2
              person.happiness= person.happiness - 2
              return "blah blah partisan blah lobbyist"
            elsif topic == "weather"
              self.happiness= @happiness + 1
              person.happiness= person.happiness + 1
              return "blah blah sun blah rain"
            else
              return "blah blah blah blah blah"
            end
          end
    
    end