require "sinatra"
require "sinatra/reloader" if development? #para  probar las sessiones mejor comentarlo o nos dara problemas
require "pry"

enable(:sessions)

get "/" do
  "
  <html>
    <head></head>
    <body>
      <header><h1>My first sinatra app</h1></header>
    </body>
  </html> 
"
end

get "/author" do 
  erb(:author)
end

get "/hi" do
  @greeting = "Hello World"
  erb(:hipage)
end

get "/pizza" do
  @ingredients = [ "cheese", "pepperoni", "mushrooms" ]
  erb(:pizza)
end

get "/users/:username" do
  @username = params[:username]
  erb(:user)
end

get "/sum/:num1/:num2" do 
  @num1 = params[:num1]
  @num2 = params[:num2]
  
  erb(:sum)
end
#

get "/hours/ago/:hour" do 
  @hour = params[:hour]
  @hour_now = Time.now
   #binding.pry
  
  @hours_ago = @hour_now - (3600 * @hour.to_i)

 

  erb(:hours_ago)
end

get "/foo" do 
  status(418)
  "I'm a tea pot!"
end

# get "/session_test" do 
#   session
# end

get "/session_test" do 
  session[:saved_value]
end

get "/session_test/:text" do 
  text = params[:text]
  session[:saved_value] = text
end

# Add a dynamic page that shows the time from a number of hours ago.
# Example URLs:
# /hours/ago/5 (the time 5 hours ago)