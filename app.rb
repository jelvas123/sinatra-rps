require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Howdy!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock")do
  moves = ["rock","paper","scissors"]
  @comp_move = moves.sample

  if@comp_move == "rock"
      @outcome =  "tied"
  elsif @comp_move == "paper"
      @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:zebra)
end


get("/paper") do
  erb(:giraffe)
end
