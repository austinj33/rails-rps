class GameController < ApplicationController
  def rock
    @user_move = "rock"
  
    moves = ["rock", "paper", "scissors"]
  
    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "won"
    else @comp_move == "paper"
      @outcome = "lost"
    end

    render({:template => "game_templates/play_rock"})
  end

  def paper
    @user_move = "paper"
  
    moves = ["rock", "paper", "scissors"]
  
    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else @comp_move == "paper"
      @outcome = "tied"
    end 
    
    render({:template => "game_templates/play_paper"})

  end

  def scissors
    @user_move = "scissors"
  
    moves = ["rock", "paper", "scissors"]
  
    @comp_move = moves.sample
    
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "tied"
    else @comp_move == "paper"
      @outcome = "won"
    end

    render({:template => "game_templates/play_scissors"})
  end
  
  def rules
    render({:template => "game_templates/rules"})
  end

end
