class ParamsGamesController < ApplicationController

  def param_name_method
    @name = params[:name].upcase
    if @name.start_with?("A")
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
  render "param_name.html.erb"
  end

  def param_number_method
    render "param_number.html.erb"
  end

  def number_guess_method
    @answer = 15
    @guess = params[:guess].to_i
    if @guess < @answer
      @message = "Guess higher!"
    elsif @guess > @answer
      @message = "Guess lower!"
    else
      @message = "You got it!"
    end
    render "form_result.html.erb"
  end

end
