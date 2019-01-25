lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "auction/version"

Gem::Specification.new do |spec|
  spec.name          = "auctioneer"
  spec.version       = Auctioneer::VERSION
  spec.authors       = ["'Ayana Bando'"]
  spec.email         = ["'ayanaflax@yahoo.com'"]
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri"
  spec.summary       = ["Search auction sites"]
  spec.homepage      = ""
  spec.license       = "MIT"

end
