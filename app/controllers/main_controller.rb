class MainController < ApplicationController
  def main_action
    render({:template => "main/main"})
  end

  def roll_dice
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end

    render(:template => "main/flexible")
  end
end
