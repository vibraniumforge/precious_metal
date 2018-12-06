This is a post describing my CLI project. From a user's point of view, they are presented a menu with 6 options. Numbers 1-4 will let them choose the current price of either Gold, Silver, Platinum or Palladium. "List" will re-list the menu, and "Exit" will leave the app.

Technically, it uses Ruby and the Nokogiri gem to scrape a website. I find the exact div that I need to scape, and get the info. Then, I send it to the metal class. I create new instances of each metal. They include a name, and a price. Then I output it to the user.

This was a tricky build. It tool a while to exactly scrape the right info that I wanted. I had to use a regex to get the data in the right format. Then I pushed 4 hashes into an array. But that is not right. I had to re-do things so that it instantiated a new Metal object, with properties of name and price.
