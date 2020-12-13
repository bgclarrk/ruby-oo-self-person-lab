# your code goes here


class Person
    attr_accessor :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank = 25
        @happiness = 8
        @hygiene = 8
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def bank_account=(amount)
        @bank += amount
    end

    def bank_account
        @bank
    end

    def happiness=(amount)
        @happiness = amount if amount >= 0 && amount <= 10
        @happiness = 10 if amount > 10
        @happiness = 0 if amount < 0
        @happiness
    end

    def happiness
        @happiness
    end

    def hygiene=(amount)
        @hygiene = amount if amount >= 0 && amount <= 10
        @hygiene = 10 if amount > 10
        @hygiene = 0 if amount < 0
        @hygiene
    end

    def hygiene
        @hygiene
    end

    def get_paid(salary)
        self.bank_account=(salary)
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

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        when "new topic, so exciting"
            "magic, rainbows and sprinkles"
        else
            "blah blah blah blah blah"
        end
    end

end