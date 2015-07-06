class Question
  attr_reader :a, :b, :result, :text

  def initialize(playnum)
    @a = rand(1..20)
    @b = rand(1..20)
    @result = @a + @b 
    @text = "Player #{playnum}: What does #{@a} + #{@b} = ?"
  end

  # def uppercase(string="")
  #   string.upcase
  # end

end



