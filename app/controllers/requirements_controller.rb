class RequirementsController < BaseController
  belongs_to :user

  def create
    create! { collection_url }
  end

  def update
    update! { collection_url }
  end

  private

  def permitted_params
    params.permit(requirement: [:title, :description])
  end
end
