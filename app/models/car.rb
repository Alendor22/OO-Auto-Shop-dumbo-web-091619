class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.car_classification
    self.all().map do |car|
      car.classification
    end.uniq
  end

  def  special_mechanic
    Mechanic.all().select do |mechanic|
      self.classification == classification
    end
  end

  def self.all 
    @@all
  end

end
