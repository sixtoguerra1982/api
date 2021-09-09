Rails.application.routes.draw do

  post 'ufs/:date', to: 'uf#respuesta' 
  post 'client/:username', to: 'uf#requestq'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
