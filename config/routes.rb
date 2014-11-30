Rails.application.routes.draw do
  get 'advent/index'

  get 'advent/show'

  root 'advent#index'

end
