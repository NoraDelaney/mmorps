require "sinatra"
require "pry"

def player
  params["choice"]
end

def computer
  ["Rock", "Paper", "Scissors"].sample
end

def gameplay
  session[:player_score] ||= 0
  session[:computer_score] ||= 0

  if session[:player_score] < 3 && session[:computer_score] < 3
    if  player == "Rock"
     if computer == "Rock"
       session[:response] = "Both chose Rock. Tie. No score."
     elsif computer == "Paper"
       session[:response] = "You chose Rock, computer chose Paper. Computer scores."
       session[:computer_score] += 1
     elsif computer == "Scissors"
       session[:response] = "You chose Rock, computer chose Scissors. Player scores."
       session[:player_score] += 1
     end

    elsif player == "Paper"
      if computer == "Paper"
        session[:response] = "Both chose Paper. Tie, no score."
      elsif computer == "Scissors"
        session[:response] = "You chose Paper, Computer chose Scissors. Computer scores."
        session[:computer_score] += 1
      elsif computer == "Rock"
        session[:response] = "You chose Paper. Computer chose Rock. Player scores."
        session[:player_score] += 1
      end

    elsif player == "Scissors"
      if computer == "Scissors"
        session[:response] = "Both chose Scissors. Tie, no score."
      elsif computer == "Rock"
        session[:response] = "You chose Scissors. Computer chose Rock. Computer scores."
        session[:computer_score] += 1
      elsif computer == "Paper"
        session[:response] = "You chose Scissors, Computer chose Paper. Player scores."
        session[:player_score] += 1
      end
    end
  elsif
    if session[:player_score] == 3
      session[:response] = "You won!"
    elsif session[:computer_score] == 3
      session[:response] = "You lost, Computer won."
    end
    session[:player_score] = 0
    session[:computer_score] = 0
  end

end

  use Rack::Session::Cookie, {
    secret: 'zonks_tho'
  }

get '/mmorps' do


  erb :index,
  locals: { player_score: session[:player_score], computer_score: session[:computer_score], response: session[:response]}
end

post '/mmorps' do
    gameplay

redirect '/mmorps'
#  erb :index, locals: { player_score: session[:player_score], computer_score: session[:computer_score],response: session[:response]}

end
