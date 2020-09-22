require "pry"

class RubyChallenge
  attr_reader :test1

  def initialize(test1)
    @test1 = test1
  end

  def hello
    "This is #{@test1}"
  end
end
