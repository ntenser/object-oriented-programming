class Paperboy
    attr_accessor :name, :experience
    attr_reader :earnings

    def initialize(name, experience, earnings)
      @name = name
      @experience = 0
      @earnings = 0
    end

    def quota
      minimum = 50
      @experience / 2 + minimum
    end

    def deliver(start_address, end_address)
    q = quota
    deliveries = end_address - start_address + 1
    @experience += deliveries


    if deliveries >= q
      @earnings = (deliveries * 0.25) + (deliveries - q) * 0.50
    else
      @earnings = (deliveries * 0.25) - 2
      end
    end


    def report
      "I'm #{@name}, I've delivered #{experience} and I've earning $#{@earnings} so far!"
    end

end
