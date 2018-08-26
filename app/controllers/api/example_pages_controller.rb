class Api::ExamplePagesController < ApplicationController
  def fortune_action
    fortune = ["You will make a million dollors this year", 
                "You will make 10 new friends this year.", 
                "The fortune you seek is on another webpage."
                ]
      @your_fortune = fortune.sample
    render 'fortune_view.json.jbuilder'
  end

  def random_number_action
    possible_numbers = (1..60).to_a.shuffle
    picked_numbers = []
    
     picked_numbers << possible_numbers.sample(6)
    
    @final_numbers = picked_numbers.join(" - ")
    render 'random_number_view.json.jbuilder'
  end 

  def lyrics_action
  end 

end
