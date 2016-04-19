Rails.application.routes.draw do

  root 'home#index'

   get 'admin', to: redirect('/administraccion/login')

   devise_for :admins, path: 'administraccion', path_names: {sign_in: 'login', sign_out: 'cerrar_session'}, :skip =>[:registrations], controllers: { sessions: 'admins/sessions'}

namespace :admin do
    get 'dashboard' => 'dashboard#index'

  end



end
