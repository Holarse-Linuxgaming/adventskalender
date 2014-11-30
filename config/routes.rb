Rails.application.routes.draw do
  get 'advent/index'

  get 'advent/show'

  get 'participate' => 'advent#show'
  post 'participate' => 'advent#save'

  root 'advent#index'

end
