Rails.application.routes.draw do
  get("/", {:controller => "main", :action => "main_action"})
  get("/dice/:number_of_dice/:how_many_sides", {:controller => "main", :action => "roll_dice"})
    
end
