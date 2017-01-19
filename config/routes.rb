Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/param_name", to: "params_games#param_name_method"
  get "/param_number", to: "params_games#param_number_method"
  post "/form_number_guess", to: "params_games#number_guess_method"
end
