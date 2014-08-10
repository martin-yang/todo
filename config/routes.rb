Todo::Application.routes.draw do
  root 'dashboard#index'

  mount Resque::Server, :at => "/resque"
end
