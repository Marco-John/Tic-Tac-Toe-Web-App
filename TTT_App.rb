require 'sinatra'
require_relative 'Play_TTT.rb'

enable :sessions

get '/' do
    erb :choose_players
end

post '/input' do
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    erb :player_one_marker,:locals => {:player_one => session[:player_one], :player_two => session[:player_two]}     
end

post '/playermarker' do
    choice_for_x = params[:choice_for_x]
    if choice_for_x == "Player One"
        player_one_marker = "X"
        player_two_marker = "O"
    else 
        player_one_marker = "O"
        player_two_marker = "X"
    end
    board = game_board
    if session[:player_one] == "Simple AI"
        player1 = {:player_mode => Simple.new, :marker => player_one_marker}
    else    session[:player_one] == "Sequential AI"
        player1 = {:player_mode => Sequential.new, :marker => player_one_marker}
    end
    
    if session[:player_two] == "Simple AI"
        player2 = {:player_mode => Simple.new, :marker => player_two_marker}
    else    session[:player_two] == "Sequential AI"
        player2 = {:player_mode => Sequential.new, :marker => player_two_marker}
    end
    board = play_game(player1,player2,board)
    erb :table, :locals => {:player_one_marker => player_one_marker, :player_two_marker => player_two_marker, :player_one => session[:player_one], :player_two => session[:player_two], :board => board}
end
    