# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end


    def happiness=(count)
        @happiness = if count > 10
            10
        elsif count < 0
            0
        else
            count
        end

    end

    def hygiene=(num)
        @hygiene =  if num > 10
                      10
                    elsif num < 0
                      0
                    else
                      num
                    end
      end


      def clean?
        #use of explicit self
        hygiene > 7 ? true : false
      end

      def happy?
         #use of explicit self
        happiness > 7 ? true : false
      end

      def get_paid amount
        self.bank_account += amount
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

      def call_friend friend
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
      end

      def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end
      end
end