module Players
  class Human < Player
    attr_reader :position
    def move(input)
      @position = input
    end
      
  end
end