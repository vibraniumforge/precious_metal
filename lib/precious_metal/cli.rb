class PreciousMetal::CLI
    
    def call
        greet
        scrape
        list_metals_and_prices
        menu
        goodbye
    end
    
    def greet
      puts ""
      puts "Welcome to the Precious Metal Price App!"
    end
    
    def scrape
      PreciousMetal::Scraper.new.scrape_page
    end
      
    def list_metals_and_prices
        puts ""
        puts "Please enter 1-4 to choose to view the current price"
        puts "of one of the four precious metals."
        puts "Enter 'list' to show the list again."
        puts "Or 'exit' to exit the program."
        puts ""
        PreciousMetal::Metal.all.each.with_index(1) do |metal, index|
            puts "#{index}. #{metal.name}"
        end
    end

    def menu
        user_input=nil
        while user_input !="exit"
            user_input=gets.strip
            if user_input.to_i.between?(1,4)
                the_choice=PreciousMetal::Metal.all[user_input.to_i-1]
                puts "The current price of #{the_choice.name} is < #{the_choice.price} > U.S. dollars per Troy Ounce."           
            elsif user_input =="list"
              list_metals_and_prices
            elsif user_input =="exit"
            else
              puts "Please enter a number, 1-4, 'list' or 'exit' to exit."
            end
        end
    end

    def goodbye
        puts ""
        puts"Goodbye! Thanks for using the Precious Metal Price App!"
        puts ""
    end

end

PreciousMetal::CLI.new.call