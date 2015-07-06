class Player
  attr_reader :point, :life

  # instance methods

  def initialize(point=0, life=3)
    @point = point
    @life = life
  end

  # properties

  # GETTER for @life
  # reader
  # attr_reader :life
  # def life
  #   @life
  # end

  # SETTER for life
  # writer
  # attr_writer :life
  # def life=(val)
  #   @life = val
  # end

  # attr_accessor

  def increment_point
    @point += 1
  end

  def decrement_life
    @life -= 1
  end


end


