# your code goes here
require 'pry'

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name, bank_account=25, happiness=8, hygiene=8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        if happiness > 10
            @happiness = 10 
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene > 10
            @hygiene = 10 
        elsif hygiene < 0
            @hygiene = 0
        else @hygiene = hygiene
        end
    end

    def happy?
        if happiness > 7 
            true
        else false
        end
    end

    def clean?
        if hygiene > 7 
            true
        else false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    
end

this_guy = Person.new("Guy")

