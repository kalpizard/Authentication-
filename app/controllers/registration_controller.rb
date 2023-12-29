# /mnt/c/Users/Dell/Desktop/rails_app/vr/app/controllers/registration_controller.rb
# class RegistrationController < ApplicationController

  
#     def create
#       # Método para procesar la creación de una nueva cuenta
    
#     user = User.create!(
#      email: params['user']['email'],
#      password: params['user']['password']
#      password_confirmation: params['user']['password_confirmation']
#     )

# if user
#     session[:user_id] = user.id
#     render json: {
#    status: :created, 
#    user: user

#     }
    
# else
#     render json: { status: 500}
# end


#     end

#   end
  



######AGREGAR COMA 

# class RegistrationController < ApplicationController
#     def create
#       # Método para procesar la creación de una nueva cuenta
#       user = User.create!(
#         email: params['user']['email'],
#         password: params['user']['password'],
#         password_confirmation: params['user']['password_confirmation']
#       )
  
#       if user
#         session[:user_id] = user.id
#         render json: {
#           status: :created,
#           user: user
#         }
#       else
#         render json: { status: 500 }
#       end
#     end
#   end
  





def create
  user = User.new(user_params)

  if user.save
    render json: { status: :created, user: user }
  else
    render json: { status: 422, errors: user.errors.full_messages }
  end
end

private

def user_params
  params.require(:user).permit(:email, :password, :password_confirmation)
end
def create
  puts "Params: #{params.inspect}"
  # Resto del código...
end
