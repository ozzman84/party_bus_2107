class Bus
  attr_reader :name,
              :capacity,
              :passengers

  def initialize(name, capacity)
    @name       = name
    @capacity   = capacity
    @passengers = []
  end

  def add_passenger(name)
    @passengers << name
  end

  def yell_at_passengers
    @passengers.map(&:upcase)
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    @passengers.length > 4
  end

  def kick_out
    @passengers.shift[0]
  end
end
