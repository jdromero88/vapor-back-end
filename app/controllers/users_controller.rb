class UsersController < ApplicationController
  def create
    user = User.create(username: params[:username],
      password_digest: params[:password_digest],
      email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name],
      birthdate: params[:birthdate],
      bio: params[:bio],
      user_avatar: params[:user_avatar])
  end
  def index
    users = User.all
    render json: users.to_json
  end
  def login
    # byebug
    user = User.find_by(username: params[:username])
    if user
<<<<<<< HEAD
      if user.password_digest === params[:password]
        render json: user.to_json
      else
        render json: {message: 'user not found'}
      end
=======
      render json: user.to_json
      # if user.password_digest === params[:password]
      # else
      #   render json: {message: 'user not found'}
      # end
>>>>>>> singup
    else
      render json: {message: 'user not found'}
    end
  end
end





# user = User.create(username: 'Jose',
#   password_digest: 'jose',
#   email: 'jose@vapor.com',
#   first_name: 'José',
#   last_name: 'Romero',
#   birthdate: '08-02-1988',
#   bio: 'Hola Mundo Vapor',
#   user_avatar: 'https://steamuserimages-a.akamaihd.net/ugc/612799444232117080/0C83D7069E014FCA1C17EA9C879DA46F7E9CDE9A/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false')