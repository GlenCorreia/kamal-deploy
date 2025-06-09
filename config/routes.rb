Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  get "/products", to: "products#index" # INDEX - Shows all the records

  get "/products/new", to: "products#new" # NEW - Renders a form for creating a new record 
  post "/products", to: "products#create" # CREATE - Processes the new form submission, handling errors and creating the record

  get "/products/:id", to: "products#show" # SHOW - Renders a specific record for viewing

  get "/products/:id/edit", to: "products#edit" # EDIT - Renders a form for updating a specific record
  patch "/products/:id", to: "products#update" # UPDATE (Full) - Handles the edit form submission, handling errors and updating the entire record, and typically triggered by a PUT request
  put "/products/:id", to: "products#update" # UPDATE (Partial) - Handles the edit for submission, handling errors and updating specific attributes of the record, and typically triggered by a PATCH request

  delete "products/:id", to: "products#destroy" # DESTROY - Handles deleting a specific record
end
