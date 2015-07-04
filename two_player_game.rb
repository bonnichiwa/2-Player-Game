# @norma = 3
# @red = 3

def norma_life
  @norma -= 1
  puts "Player 1, you have #{@norma} live(s) left"
end

def red_life
  @red -= 1
  puts "Player 2, you have #{@red} live(s) left"
end

def question_answer
  if @input == @result
    puts "correct!"
  else
    puts "wrong!"
    norma_life
  end
end

def question_answer_2
  if @input_2 == @result
    puts "correct!"
  else
    puts "wrong!"
    red_life
  end
end

while @norma > 0 && @red > 0

  @a = rand(1..20)
  @b = rand(1..20)
  @result = @a + @b 

  question = "Player 1: What does #{@a} + #{@b} = ?"
  puts question
  @input = gets.chomp.to_i

  question_answer

  @a = rand(1..20)
  @b = rand(1..20)
  @result = @a + @b 

  question_2 = "Player 2: What does #{@a} + #{@b} = ?"
  puts question_2
  @input_2 = gets.chomp.to_i

  question_answer_2
  
end

def winner
  if @norma > @red
    puts "Thanks for playing! The winner is Player 1!"
  else
    puts "Thanks for playing! The winner is Player 2!"
  end
end

winner
