class LogicsController < ApplicationController
  @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!" }

  def winner(my_play, computer_play)
    if my_play == computer_play
      return "We tied!"
    else
      if my_play == 1
        if computer_play == 2
          return "We lost!"
        elsif computer_play == 3
          return "We won!"
        end
      elsif my_play == 2
        if computer_play == 1
          return "We won!"
        elsif computer_play == 3
          return "We lost!"
        end
      else
        if computer_play == 2
          return "We won!"
        elsif computer_play == 1
          return "We lost!"
        end
      end
    end
  end

  def homepage
    render({ :template => "logics_templates/main" })
  end

  def rock
    @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!" }

    @computer_play = rand(1..3)
    @my_play = 1
    @result = winner(@my_play, @computer_play)

    render({ :template => "logics_templates/rock" })
  end

  def paper
    @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!" }

    @computer_play = rand(1..3)
    @my_play = 2
    @result = winner(@my_play, @computer_play)
    
    render({ :template => "logics_templates/paper" })
  end

  def scissors
    @hashrolls = { 1 => "rock!", 2 => "paper!", 3 => "scissors!" }

    @computer_play = rand(1..3)
    @my_play = 3
    @result = winner(@my_play, @computer_play)

    render({:template => "logics_templates/scissors" })
  end
end
