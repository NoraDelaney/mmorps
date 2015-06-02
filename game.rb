def player
  params["choice"]

end

def computer
  ["Rock", "Paper", "Scissors"].sample
end

def gameplay
  if  player == "Rock"
     if computer == "Rock"
       puts "tie"
     elsif computer == "Paper"
       computer_score += 1
     elsif computer == "Scissors"
       player_score += 1
     end

  elsif player == "Paper"
    if computer == "Paper"
      puts "tie"
    elsif computer == "Scissors"
      computer_score += 1
    elsif computer == "Rock"
      player_score += 1
    end

  elsif player == "Scissors"
    if computer == "Scissors"
      puts "tie"
    elsif computer == "Rock"
      computer_score += 1
    elsif computer == "Paper"
      player_score += 1
    end
  end
end

# player_score = 0
# comp_score = 0
#
# until player_score == 2 || comp_score == 2
#   puts "Player Score: " + player_score.to_s + ", Computer Score: " + comp_score.to_s
#   puts "Choose rock (r), paper (p), or scissors (s)"
#   player_choice = gets.chomp
#
#   while true
#     if player_choice == "r"
#       puts "Player chose rock."
#       break
#     elsif player_choice == "p"
#       puts "Player chose paper."
#       break
#     elsif player_choice == "s"
#       puts "Player chose scissors."
#       break
#     else
#       puts "Please type r, p, or s."
#       player_choice = gets.chomp
#     end
#   end
#
#     choice = rand(2)
#
#   if choice == 0
#     puts "Computer chose rock."
#   elsif choice == 1
#     puts "Computer chose paper."
#   else
#     puts "Computer chose scissors."
#   end
#
#   if player_choice == "r" && choice == 0 || player_choice == "p" && choice == 1 || player_choice == "s" && choice == 2
#       puts "It's a tie. Try again."
#       puts ""
#   elsif player_choice == "r" && choice == 2
#       player_score = player_score + 1
#       puts "Rock beats scissors. You win. Play again."
#       puts ""
#   elsif player_choice == "s" && choice == 0
#       comp_score = comp_score + 1
#       puts "Rock beats scissors. The computer wins. Play again."
#       puts ""
#   elsif player_choice == "p" && choice == 2
#       comp_score = comp_score + 1
#       puts "Scissors beats paper. The computer wins. Play again."
#       puts ""
#   elsif player_choice == "s" && choice == 1
#       player_score = player_score + 1
#       puts "Scissors beats paper. You win. Play again."
#       puts ""
#   elsif player_choice == "r" && choice == 1
#       comp_score = comp_score + 1
#       puts "Paper beats rock. The computer wins. Play again."
#       puts ""
#   else
#       player_score = player_score + 1
#       puts "Paper beats rock. You win. Play again."
#       puts""
#   end
# end
#
#     if player_score > comp_score
#     puts "Yay! You won! Thanks for playing."
#     else puts "Sorry, the computer won. Thanks for playing."
# end
