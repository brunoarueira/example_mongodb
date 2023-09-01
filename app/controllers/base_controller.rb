class BaseController < InheritedResources::Base
  respond_to :html

  private

  def update_resource(object, attributes)
    object.update_attributes(attributes.last.to_h)
  end
end
