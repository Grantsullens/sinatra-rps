require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:rules)

end

get("/rock") do

  @we_play = "rock"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[@play]
  
  if @they_play == "rock"
    @outcome = "tied"
  elsif @they_play == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:rock)
end

get("/paper") do
  @we_play = "paper"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[@play]
  
  if @they_play == "rock"
    @outcome = "won"
  elsif @they_play == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end
  
  erb(:paper)
end

get("/scissors") do
  @we_play = "scissors"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[@play]
  
  if @they_play == "rock"
    @outcome = "lost"
  elsif @they_play == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  
  erb(:scissors)
end
