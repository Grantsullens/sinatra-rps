require "sinatra"
require "sinatra/reloader"


get("/rock") do

  we_play = "rock"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[play]
  
  erb(:rock)
end

get("/paper") do
  we_play = "paper"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[play]
  
  erb(:paper)
end

get("/scissors") do
  we_play = "scissors"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[play]
  
  erb(:scissors)
end
