require "Rspec"
# class transform
#   def initialize(string)
    
#     @num = string
#     @@totalnum ||= 0

#   end

#   def check(@num)
#     array_num = @num.split(",")
#     array_num.reduce(0) do |num|
#       @@totalnum += num.to_i
#     end
#   end
# end

# puts "Introduce una cadena de numeros"

# string_num = gets.chomp
# test = Transform.new(tring_num)

#Itineration 2 #acept undeterminated amount numbers 
# class Transform
#   def initialize(string)
#     @num = string
#     @@totalnum ||= 0
#     self.check(@num)
#   end

#   def check(num)
#     array_num = @num.split(",","\n")
#     array_num.each do |num|
#       @@totalnum += num.to_i
#     end
#     @@totalnum
#   end
# end

# puts "Introduce una cadena de numeros"

# string_num = gets.chomp
# test = Transform.new(string_num)

# RSpec.describe "Transform" do
#     it "returns 0 for the empty string" do
#         expect(Transform.new("")).to eq(0)
#     end
# end


##sol FER

# class StringCalculator
#   def sum(stringNumbers)
#     numbers = stringNumbers.split(",")
#     numbers.reduce(0) do |memo, num| 
#       memo + num.to_i
#     end
#   end
# end
# if 0 == StringCalculator.new.sum("")
#   puts "funciona"
# else
#   puts "esta roto"
# end

# if 2 == StringCalculator.new.sum("2")
#   puts "funciona"
# else
#   puts "esta roto"
# end

# if 7 == StringCalculator.new.sum("2,5")
#   puts "funciona"
# else
#   puts "esta roto"
# end



class StringCalculator
  
  def add(stringNumbers)
    memo = 0
    stringNumbers.split(",").each do |num| 
      memo += num.to_i
    end
  end

end

# RSpec.describe "StringCalculator" do
#     before :each do
#       @calculator = StringCalculator.new
#     end
#     it "should return 0 for an empty string" do 
#       expect(@calculator.add("")).to eq(0)
#     end
#     it "should return 2 when only that number" do
#       expect(@calculator.add("2")).to eq(2)
#     end
#     it "should return 3 if adding 1 and 2" do 
#       expect(@calculator.add("2,1")).to eq(3)
#     end

# end
# en el caso del let debes llamar al metodo como se especifica en let o no se ejecutara
RSpec.describe "StringCalculator" do
  let(:calculator) { StringCalculator.new }
  it "should return 0 for an empty string" do
    expect(calculator.add("")).to eq(0)
  end
  it "should return 2 when only that number" do
    expect(calculator.add("2")).to eq(2)
  end
  it "should return 3 if adding 1 and 2" do
    expect(calculator.add("2,1")).to eq(3)
  end
end