require 'pry'
class Auctioneer::Auction
  attr_accessor :item_name, :item_price, :image

  @@all = []

  def initialize(items_h)
      items_h.each do |key, value|
        self.send("#{key}=", value)
      end
      @@all << self
    end

  def self.names

    items = Auctioneer::Scraper.name
    items.each.with_index do |item, i|
       puts "#{i}. #{item}"
     end
  end

  def self.create_makers
    items_a = Auctioneer::Scraper.scrape_info
    items_a.collect do |items_h|
      self.new(items_h)
    end
  end

  def self.all
    @@all
  end

end
