class Questions
  def initialize
    @random1 = rand(1..20)
    @random2 = rand(1..20)
  end

  def question
    puts "What is #{@random1} + #{@random2}?"
    answer = gets.chomp
    answer
    if answer.to_i == (random1 + random2)
      true
    else
      false
    end
  end
end