require 'pry'
class Auctioneer::Auction
  attr_accessor :item_name, :item_price, :image

  @@all = []

  def initialize(items)

      @@all << self
  end

  def self.names

    items = Auctioneer::Scraper.name
    items.each.with_index(1) do |item, i|
       puts "#{i}. #{item}"
     end
  end

  def self.create_items
    items = Auctioneer::Scraper.scrape_info

    items.values.each do |key, item|
      puts "#{key}" "#{item}"
    end
  # names = items[:item_name]
  # prices = items[:item_price]
  # images = items[:image]
  #   if names != nil
  #     names.each do |name|
  #     puts  name
  #     puts prices
  #     puts image
  #   end
  # end
  end

  def name_items
    items = Auctioneer::Auction.create_items

    binding.pry
  end

  def self.all
    @@all
  end

end
