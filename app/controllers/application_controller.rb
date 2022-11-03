class ApplicationController < ActionController::Base


def after_sign_in_path_for(resource)
  if resource.admin? || resource.seller?
     admin_categories_path
  else
    root_path
  end
end
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
    def record_not_found
      respond_to do |format|
        
          format.html 
           end   
      # render plain: "404 Not Found", status: 422
    end
end

