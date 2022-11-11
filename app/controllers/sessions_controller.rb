class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    ## check if username (email) matches encrypted password from digest
    ## if it does, do the code in the first if statement
    if user && user.authenticate(params[:password])
      # create jw token
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i, # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      # below code makes it so that only this app can use this token, access login info (?)
      render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
