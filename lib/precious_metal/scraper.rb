# frozen_string_literal: true

class PreciousMetal::Scraper
  def scrape_page
    list = Nokogiri::HTML(open('https://goldprice.com/'))
    list.css('.nfusion-table.single-price').each do |metal_price|
      metal = {
        name: metal_price.css('.metal-title').text.gsub('Price', '').strip,
        price: metal_price.css('.nfprice').text.gsub('$', '').strip
      }
      PreciousMetal::Metal.new(metal)
    end
  end
end
