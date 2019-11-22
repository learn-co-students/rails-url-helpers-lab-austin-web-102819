Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :students, only: [:index, :show]
  # Here we're configuring a route to allow a user to toggle their "active" attribute
  # Route a GET request from /students/:id/activate to the app/controllers/students_controller.rb's #activate method
  # Name this route: activate_student
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
