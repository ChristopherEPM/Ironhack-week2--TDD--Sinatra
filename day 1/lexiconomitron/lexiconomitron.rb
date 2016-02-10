
#Create the Lexiconomitron class. Write a method called #eat_t to pass the following test
class Lexiconomitron
  
  def eat_t(string)
    string.tr('tT','')
  end

  def shazam(array_strings)
    array_strings.map { |item| item.reverse}
    
  end

  def oompa_lompa(array_strings)
    new_array = array_strings.reject{|item| item.length > 3}
    new_array.map {|item| self.eat_t(item)}
  end
  
end



# One of the methods of this Ruby interface is one called “shazam”. 
#It takes an array of words (for example [“This”, “is”, “a”, “boring”, “test”]). 
#With this array, it reverses the letters within the words (that is, [“sihT”, “si”, “a”, “gnirob”, “tset”]) and ends up returning only the first and last words.
# But Lexiconomitron eats Ts, so it returns [“sih, “se”].

# Write a test for the #shazam method. Instead of creating a new instance of the Lexiconomitron class for each test, add a before :each method that does it for you.

# Write the #shazam method to pass the test.