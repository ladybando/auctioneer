require "pry"
class Auctioneer::Scraper
  # 1. Create a Maker class
    # -move attributes to Maker class
  # 2. Create a class variable to hold all makers
  # 3. Refer to that class variable from the CLI class rather than Scraper

    def self.name
      makers = []
      doc = Nokogiri::HTML(open("https://www.shopgoodwill.com/"))
      #
      gall_auction = doc.css(".group-search")[0].text
      new_today = doc.css(".group-search")[1].text
      hot_fifty = doc.css(".group-search")[4].text
      makers << gall_auction
      makers << new_today
      makers << hot_fifty
    end

    def self.scrape_info
      doc = Nokogiri::HTML(open("https://www.shopgoodwill.com/"))

      makers_hash = {}
      makers_hash[:item_name] =  doc.css(".title")[0].text
      makers_hash[:item_price] =  doc.css(".price")[0].text
      makers_hash[:image] =  doc.css(".image")[0]

      makers_hash
    end

    def self.scrape_el
      doc = Nokogiri::HTML(open("https://www.shopgoodwill.com/"))



    end

    # def self.scrape_coty
    #   docs = Nokogiri::HTML(open("https://finance.yahoo.com/quote/COTY/profile?p=COTY"))
    #   doc = Nokogiri::HTML(open("https://finance.yahoo.com/sector/consumer_goods"))
    #
    #   makers_hash = {}
    #
    #   makers_hash[:stock_name] = docs.search("div h3").first.text
    #   makers_hash[:stock_price] = doc.search("tr td span")[189].text.to_i
    #   makers_hash[:location] = docs.search("div p")[0].text[16...28]
    #   makers_hash[:url] = docs.search("div p a")[1].text
    #   makers_hash[:corp_info] = docs.search("div p")[2].text
    #   makers_hash
    #
    # end

end
