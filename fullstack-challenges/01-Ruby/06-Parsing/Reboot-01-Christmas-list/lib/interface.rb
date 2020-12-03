# TODO: you can build your christmas list program here!
# 1. Welcome the user
# 2. Display menu (list / add / delete / mark / quit)
# 3. Get/store the user action
# 4. We want to do something in the program depending on what the user is saying
    # if my user is telling he wants to list
    #   i need to list the christmas_list to him
    #   puts "todo: list"
    # elsif my user is telling he wants to add something
    #   i should ask him what he wants to add to his christmas_list
    #   add it to the christmas list
    #   ....delete
    #   ...mark
    # end
# 5.loop: conditional loop with while or until
  # while the user does not say quit
  #   loop and present the christmas gift game where he can perform the CRUD on his christmas list
  # end

#require 'nokogiri'

#filepath = "results.html"

#html_content = File.open(filepath)
#doc = Nokogiri::HTML(html_content)

# 3. We search for the correct elements containing the items' title in our HTML doc
#doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
  # 4. For each item found, we extract its title and print it
#  puts element.text.strip
#end


#require 'open-uri'
#require 'nokogiri'

#puts "What are you searching on Etsy?"
#article = gets.chomp


#html_content = open("https://www.etsy.com/search?q=#{jeans}").read

#doc = Nokogiri::HTML(html_content)

# 3. We search for the correct elements containing the items' title in our HTML doc
#doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
  # 4. For each item found, we extract its title and print it
#  puts element.text.strip
#end




  xmas_list = {
    "car" => false,
    "plane" => false,
    "puppy" => false,
    "doll" => false
  }


puts "Welcome to your Xmas list!"
answer = nil

while answer != "quit"
  puts "Would you like to list|add|delete|mark|idea or quit?"
  answer = gets.chomp.downcase

  if answer == "list"
    xmas_list.each do |presents, available|
      puts "#{presents}, #{available}"
    end
  elsif answer == "add"
    puts "which article would you like to add?"
    article = gets.chomp
  elsif answer == "delete"
    puts "which article would you like to delete"
    article = gets.chomp
  elsif answer == "mark"
    puts "which article would you like to mark"
    article = gets.chomp
  elsif answer == idea
    puts ""

  else
    puts "type one of the options"
      if answer == "quit"
        puts "Thanks for playing!"
      end
  end
end




# 1. add an other action inside of our menu : idea/inspiration
# 2. curl "https://www.etsy.com/search?q=THE_ARTICLE_YOUR_ARE_LOOKING_FOR" > results.html (type in your terminal)
# 3. play and look the classes that allow us to get access to the information/data we would like to steal/get.
# require 'nokogiri'
  # filepath = "/path/to/the/HTML/file.html"
  # # 1. We get the HTML page content
  # html_content = File.open(filepath)
  # # 2. We build a Nokogiri document from this file
  # doc = Nokogiri::HTML(html_content)
  # # 3. We search for the correct elements containing the items' title in our HTML doc
  # doc.search('.v2-listing-card .v2-listing-card__info .text-body').each do |element|
  #   # 4. For each item found, we extract its title and print it
  #   puts element.text.strip
  # end





