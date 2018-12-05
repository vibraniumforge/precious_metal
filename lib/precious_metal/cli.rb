require_relative "./scraper.rb"
require_relative "./metal.rb"

class PreciousMetal::CLI

    
    def call
        list_metals_and_prices
        menu
        goodbye
    end
    
    def list_metals_and_prices
        puts "Welcome to the precious metal price app."
        puts "Please choose one of the four precious metals to see their current price."
        PreciousMetals::Scraper.begin
        PreciousMetals::Metal.all.each.with_index(1) do |index, metal|
            puts "#{index}. #{metal}"
        end
    end

    def menu
        input=nil
        while input !="exit"
            puts "Or enter 'list' to show the list again."
            user_input=gets.strip.to_i
            if user_input.between(1..4)
                the_choice=PreciousMetals::Metal.all[user_input-1]
                puts "The price of #{the_choice.name} is #{the_choice.price} U.S. dollars per Troy Ounce."           
            elsif user_input =="list"
                list_metals_and_prices
            else
                "Please enter a number, 1-4, 'list' or 'exit' to exit."
            end
        end
    end

    def goodbye
        puts"Goodbye! Thanks for using this app!"
    end

end

PreciousMetal::CLI.new.call