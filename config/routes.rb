Rails.application.routes.draw do
  root 'billboard_charts#index'

  resources :billboard_charts do
    resources :artists
  end

   resources :artist do
      resources :songs 
   end

  delete "/billboard_chart/:id", to: "billboard_charts#destroy", as: "destroy_the_billboard_chart"

end
