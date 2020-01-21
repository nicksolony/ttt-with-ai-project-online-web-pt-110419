require 'pry'
class Board

attr_accessor :cells

def initialize
  @cells = []
  9.times { @cells << " "}
end

def reset!
  @cells = []
  9.times { @cells << " "}
end

def display
  
  puts (" #{@cells[0]} | #{@cells[1]} | #{@cells[2]} ")
  puts ("-------------")
  puts (" #{@cells[3]} | #{@cells[4]} | #{@cells[5]} ")
  puts ("-------------")
  puts (" #{@cells[6]} | #{@cells[7]} | #{@cells[8]} ")
end

def position(pos)
  #pos = gets
  @cells[pos.to_i - 1]
end

def full?
  @cells.all? { |cell| cell != " "}
end

def turn_count
  @cells.find_all { |cell| cell != " "}.size
end

def taken?(pos)
  position(pos) != " "
end

def valid_move?(pos)
  pos.to_i.between?(1,9) && taken?(pos)!= true
end

def update(pos,player)
 # binding.pry
  if valid_move?(pos) 
    #&& token.between?("X","O")
    @cells [pos.to_i-1] = player.token
    
  end
end

end