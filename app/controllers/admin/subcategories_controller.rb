module Admin
    class SubcategoriesController < ApplicationController
      load_and_authorize_resource
        def index
           @subcategories= Subcategory.all
        end

         def new 
          @subcategory = Subcategory.new
          
        end

        def create
          @subcategory = Subcategory.new(subcategory_params)
           if @subcategory.save
             flash[:success] = "Subcategory successfully created"
             redirect_to admin_category_subcategories_path
           else
             flash[:error] = "Something went wrong"
             render 'new'
            end
        end

        def show
            @subcategory = Subcategory.friendly.find(params[:id])
            
        end

        def edit
          @category = Category.friendly.find(params[:category_id])
          @subcategory = Subcategory.friendly.find(params[:id])
        end

        def update
          @category= Category.find(params[:category_id]) 
          @subcategory = Subcategory.friendly.find(params[:id])
           
          if @subcategory.update(subcategory_params)
              flash[:success] = "Subcategory successfully updated"
              redirect_to admin_category_subcategory_path(@subcategory)
            else
              flash[:error] = "Something went wrong"
              render 'new'
            end
        end
       def destroy
        
        @subcategory = Subcategory.find(params[:id])
        if @subcategory.destroy
            flash[:success] = 'Object was successfully deleted.'
            redirect_to admin_category_subcategories_path
        else
            flash[:error] = 'Something went wrong'
            redirect_to admin_category_subcategories_path
        end
       end
       
       private
       def subcategory_params
        params.require(:subcategory).permit(:name, :category_id, :image)

    end
    end 
end 