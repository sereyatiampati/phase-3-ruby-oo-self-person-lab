# your code goes here
class Person
    attr_accessor :bank_account, :happiness, :hygiene, :happier 
    attr_reader :name 
    def initialize(name, bank_account= 25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0 
            @happiness=0
        else
            @happiness
        end
    end
    def hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0 
            @hygiene=0
        else
            @hygiene
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end
    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness+=2
        self.hygiene-=3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness +=3
        friend.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end
    def start_conversation(person, topic)
        
    end
end