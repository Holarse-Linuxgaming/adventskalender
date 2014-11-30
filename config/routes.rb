Rails.application.routes.draw do
  get 'advent/index'
  get 'advent/show'
  get 'advent/games'

  get 'participate' => 'advent#show'
  post 'participate' => 'advent#save'
  get 'games' => 'advent#games'
  
  root 'advent#index'

end
