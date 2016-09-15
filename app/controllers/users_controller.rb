class UsersController < Clearance::UsersController

  private

  # def url_after_create
  #   redirect_to
  # end

  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    firstname = user_params.delete(:firstname)
    lastname = user_params.delete(:lastname)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.firstname = firstname
      user.lastname = lastname
    end
  end
end
