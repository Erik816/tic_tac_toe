# Create the game grid for Tic Tac Toe
class Board
  attr_accessor :grid, :player_input

  def createGrid
    @grid = Hash.new
    ("a".."c").each do |letter|
      (1..3).each do |i|
        @grid["#{letter}#{i}"] = "-"
        print @grid["#{letter}#{i}"]
      end
      puts
    end
  end

  def printGrid
    ("a".."c").each do |letter|
      (1..3).each do |i|
        print @grid["#{letter}#{i}"]
      end
      puts
    end
  end

  def updateGrid(move)
    @grid[move] = "x"
    printGrid
  end

end

class Player

  #set up two players

end

#victory condition
#logic loop to flow through game

#testing
puts "Welcome to Tic Tac Toe!"

tic_tac_toe = Board.new
tic_tac_toe.createGrid


#simple updating method
puts "Player One, enter your move:"
input = gets.chomp
if input == "a1"
  @player_input = "a1"
  tic_tac_toe.updateGrid(move)
else
  puts "Input not recognized, please try again"
end
