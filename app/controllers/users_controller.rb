class UsersController < BaseController
  private

  def permitted_params
    params.permit(user: [:name, :email])
  end
end
