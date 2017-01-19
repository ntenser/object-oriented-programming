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
    deliveries = end_address - start_address + 1
    @experience += deliver
    q = quota

    if deliver >= 50
      @earnings = (q * 0.25) + [(deliver - q) * 0.50]
    else
      @earnings = [(deliver * 0.25) - 2 ]

      end
    end


    def report
      "I'm #{@name}, I've delivered #{experience} and I've earning $#{@earnings} so far!"
    end

end
