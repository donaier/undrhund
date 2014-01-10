class Shoestrap::BaseController < Kuhsaft::Cms::AdminController
  def show
    super do |format|
      format.html { redirect_to collection_path }
    end
  end

  private

  def permitted_params
    params.permit(resource_collection_name => collection.editable_attributes)
  end
end
