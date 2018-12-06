class PreciousMetal::Scraper

    attr_accessor :name, :price

    def self.scrape_page
        list=Nokogiri::HTML(open("https://goldprice.com/"))
        list.css(".nfusion-table.single-price").each do |metal_price|
            metal = {
                :name=> metal_price.css(".metal-title").text.gsub("Price", "").strip,
                :price=> metal_price.css(".nfprice").text.strip
        }
        Metal.create_metal(metal)
        end
    end

end