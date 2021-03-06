class UsersController < ApplicationController
  def create
    # byebug
    user = User.create(user_strong_params)
    render json: user.to_json(serialized_data)
  end
  def index
    users = User.all
    render json: users.to_json(serialized_data)
  end
  def show
    user = User.find(params[:id])
    render json: user.to_json(serialized_data)
  end
  # def show_by_username
  #   user = User.find_by(username: params[:username])
  #   render json: user.to_json(serialized_data)
  # end
  def login
  
    user = User.find_by(username: params[:username])
    if user
      if user.authenticate(params[:password])
        render json: user.to_json(serialized_data)
      else
        render json: {
          error: true,
          message: "Incorrect User or password!"
        }, status: :unauthorized
      end
    else
      render json: {
        error: true,
        message: "Incorrect User or password!"
      }, status: :payment_required
    end
  end
  def serialized_data
    {:except => [:password_digest, :updated_at],
      :include => {
        :games => {
          :except => [:created_at, :updated_at]
        }
      }
    }
  end

  private
    def user_strong_params
      params.require(:newUser).permit(:username,
        :password,
        :email,
        :first_name,
        :last_name,
        :birthdate,
        :bio,
        :user_avatar,
        :user_games_attributes
      )
    end
end

# def serialized_data
#   {:except => [:password_digest, :updated_at],
#         :include =>
#           {:games =>
#             {
#               :except => [:created_at, :updated_at]
#             }
#           }
#   }
# end





# user = User.create(username: 'Jose',
#   password_digest: 'jose',
#   email: 'jose@vapor.com',
#   first_name: 'José',
#   last_name: 'Romero',
#   birthdate: '08-02-1988',
#   bio: 'Hola Mundo Vapor',
#   user_avatar: 'https://steamuserimages-a.akamaihd.net/ugc/612799444232117080/0C83D7069E014FCA1C17EA9C879DA46F7E9CDE9A/?imw=512&&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false')


# user = User.create(username: 'rsmith',
#   password_digest: 'rsmith',
#   email: 'ryan@vapor.com',
#   first_name: 'Ryan',
#   last_name: 'Smith',
#   birthdate: '01-02-1995',
#   bio: 'Hello World - Vapor',
#   user_avatar: 'https://pickaface.net/gallery/avatar/unr_ryan_170527_2027_2q2fmge.png')

# chine = User.create(username: 'chine',
#   password: 'chine',
#   email: 'chine@vapor.com',
#   first_name: 'Chine',
#   last_name: 'Anikwe',
#   birthdate: '01-02-1995',
#   bio: 'Hello World - Vapor',
#   user_avatar: 'https://pickaface.net/gallery/avatar/unr_ryan_170527_2027_2q2fmge.png')
