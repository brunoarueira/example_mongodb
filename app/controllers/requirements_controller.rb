class RequirementsController < InheritedResources::Base
  respond_to :html
  belongs_to :user

  def create
    create! { collection_url }
  end

  def update
    update! { collection_url }
  end

#  protected
#    def begin_of_association_chain
#      @user ||= User.find(params[:user_id])
#    end
end
