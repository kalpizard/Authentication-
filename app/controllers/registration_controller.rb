# /mnt/c/Users/Dell/Desktop/rails_app/vr/app/controllers/registration_controller.rb
class RegistrationController < ApplicationController

  
    def create
      # Método para procesar la creación de una nueva cuenta
    
    user = User.create!(
     email: params['user']['email'],
     password: params['user']['password']
     password_confirmation: params['user']['password_confirmation']
    )

if user
    session[:user_id] = user.id
    render json: {
   status: :created, 
   user: user

    }
    
else
    render json: { status: 500}
end


    end

  end
  