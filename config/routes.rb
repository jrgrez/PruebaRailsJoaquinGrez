Rails.application.routes.draw do
  get 'experiments/pag1'

  get 'experiments/pag2'

  get 'experiments/pag3'

  root 'pages#batmanvssuperman'

  get 'pages/batman'
  get 'pages/superman'

  post	'pages/save_vote'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
