require "pry"
class Auctioneer::Scraper
  # 1. Create a Maker class
    # -move attributes to Maker class
  # 2. Create a class variable to hold all makers
  # 3. Refer to that class variable from the CLI class rather than Scraper

    def self.name
      items = []
      doc = Nokogiri::HTML(open("https://www.shopgoodwill.com/"))
      #
      gall_auction = doc.css(".group-search")[0].text
      new_today = doc.css(".group-search")[1].text
      hot_fifty = doc.css(".group-search")[4].text
      items << gall_auction
      items << new_today
      items << hot_fifty
    end

    def self.scrape_info
      doc = Nokogiri::HTML(open("https://www.shopgoodwill.com/"))
#search for new way to create hash to avoid nil for value
      items_h = Hash.new()
      items_h = {
        item_name: doc.search(".title")[0].text.split(" ").join(" "),
        item_price: doc.search(".price")[0].text.split(" ").join(" "),
        image:doc.search(".image")[0].text.split(" ").join(" ")
      }

  items_h
#  binding.pry

    end

end
