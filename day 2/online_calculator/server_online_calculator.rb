require "sinatra" #gema
require "sinatra/reloader" if  development? #gema
require_relative('./lib/calculator.rb') #relative para archivos propios

get "/add" do
  erb(:add)

end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calc_sum = Calculator.new(first,second)

  "#{first} + #{second} = #{calc_sum.operator_sum}"
  #redirect to("/index") despues de un post correcto es deal hacer un redire t
end