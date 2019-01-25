  require "colorize"
require "pry"
class Auctioneer::CLI

  def call
    list_items
    menu
  end

  def list_items
    puts "Auction Sites".colorize(:green)
    Auctioneer::Auction.names
  end


  def menu

    #binding.pry
    input = nil
    while input != "exit"
      puts "***************************************************************************************************************************************************************************************************"
      puts "Enter the number of the auction item you would like more info on or type exit to leave: ".colorize(:green)
      puts "*****************************************************************************************************************************************************************************************************"
      input = gets.strip.downcase

      items = Auctioneer::Auction.create_items

      if input.to_i > 0 && input.to_i < items.length
        
        puts "***************************************************************************************************************************************************************************************************************"
      elsif input.to_i != "exit".downcase
        puts "Invalid entry. Please enter a number or exit."
        puts "***************************************************************************************************************************************************************************************************************"
      end
    end
    goodbye
  end

  def goodbye
    puts "That's all the info I have! Hope it was helpful!"
  end
end
