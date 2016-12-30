Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get '/saywho' => 'requests#saywho'
    end
  end
  root 'static_pages#welcome'
end
