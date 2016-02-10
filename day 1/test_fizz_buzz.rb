require "Rspec"
# -- EXERCISE FIZZBUZZ--

class Fizzbuzz

  def check(num)
    result = ""
    if num % 5 == 0 && num % 3 == 0
      result += "FizzBuzz"
    end
    if num % 5 == 0
      result += "Buzz"
    end
    if num % 3 == 0
      result += "Fizz"
    end
    result.empty? ? numb : result
  end

end





RSpec.describe "Fizzbuzz" do
  before :each do
    @number = Fizzbuzz.new
  end
  it "should return 'Fizz' for a %3 number" do
    expect(@number.check(3)).to eq("Fizz")
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
# RSpec.describe "FIZZBUZZ" do
#   let(:calculator) { FIZZBUZZ.new }
#   it "should return 0 for an empty string" do
#     expect(calculator.add("")).to eq(0)
#   end
#   it "should return 2 when only that number" do
#     expect(calculator.add("2")).to eq(2)
#   end
#   it "should return 3 if adding 1 and 2" do
#     expect(calculator.add("2,1")).to eq(3)
#   end
# end

# number =1
# while number <=100
#   result= ""
#   if number %3 !=0 && number %5 !=0 && number.to_s.chars.first != "1"
#     result = number
#   end
#   if number % 3 == 0
#     result << "Fizz"
#   end 
#   if number % 5 == 0 
#     result << "Buzz"
#   end
#   if number.to_s.chars.first == "1"
#     result << "Bang"
#   end
#   puts result
#   number +=1
# end

# for number in 1..100
#   if number % 3 == 0 && number % 5  == 0
#     puts "FizzBuzz"
#   elsif number % 3 == 0
#     puts "Fizz"
#   elsif number % 5 == 0 
#     puts "Buzz"
#   else
#     puts "#{number}"
#   end
# end