we_play = "scissors"
  they_can_play = ["rock","paper","scissors"]
  @play = rand(0..2)
  @they_play = they_can_play[play]

  if @they_play == "rock"
      
