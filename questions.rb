class Questions
  attr_reader :random1, :random2
  def initialize
    @random1 = rand(1..20)
    @random2 = rand(1..20)
  end

  def question
    random1 = @random1
    random2 = @random2
    puts "What does #{random1} + #{random2} equal?"
  end
end