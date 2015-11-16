Spree::Core::Engine.routes.draw do
  get '/featured_products', to: 'home#featured_products', as: :featured_products
end
