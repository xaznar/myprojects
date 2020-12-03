class BaseRepository
 # Parent class where we keep all the general methods that are used in all our repos.

 def initialize(csv_file)
   @csv_file = csv_file
   @elements = []
   @next_id = 1
   load_csv if File.exist?(csv_file)
 end

 # READ ALL
 def all
   @elements
 end

 # CREATE
 def add(element)
   element.id = @next_id
   @elements << element
   @next_id += 1
   save_to_csv
 end

 def find(id)
   @elements.find { |element| element.id == id }
 end
end
