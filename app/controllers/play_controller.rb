class PlayController < ApplicationController
  def rock
    @your_move = "rock"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "tied"
    elsif @random_move == "paper"
      @result = "lost"
    elsif @random_move == "scissors"
      @result = "won"
    end

    render({ :template => "game_templates/play_rock" })
  end

  def paper
    @your_move = "paper"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "won"
    elsif @random_move == "paper"
      @result = "tied"
    elsif @random_move == "scissors"
      @result = "lost"
    end

    render({ :template => "game_templates/play_paper"})
  end

  def scissors
    @your_move = "scissors"
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "lost"
    elsif @random_move == "paper"
      @result = "won"
    elsif @random_move == "scissors"
      @result = "tied"
    end

    render({ :template => "game_templates/play_scissors"})
  end
end
