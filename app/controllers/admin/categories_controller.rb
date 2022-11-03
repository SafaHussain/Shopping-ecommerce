module Admin
    class CategoriesController < ApplicationController
      load_and_authorize_resource
        def index
           @categories= Category.all
        end

         def new
           @category = Category.new
        end

        def create
           @category = Category.new(category_params)
           if @category.save
             flash[:success] = "Category successfully created"
             redirect_to admin_category_path(@category)
           else
             flash[:error] = "Something went wrong"
             render 'new'
            end
        end

        def show
            @category = Category.friendly.find(params[:id])
            @subcategory = Subcategory.new
            @subcategories= @category.subcategories
        end

        def edit
           @category = Category.friendly.find(params[:id])
        end

        def update
            @category = Category.friendly.find(params[:id])
            if @category.update(category_params)
              flash[:success] = "Category successfully updated"
              redirect_to admin_category_path(@category)
            else
              flash[:error] = "Something went wrong"
              render 'new'
            end
        end
        def destroy
            @category = Category.friendly.find(params[:id])
           if @category.destroy
                flash[:success] = 'Category was successfully deleted.'
                redirect_to admin_categories_path
            else
                flash[:error] = 'Something went wrong'
                redirect_to admin_categories_path 
            end

            
        end
        def sub
          @subcategories = Subcategory.where("category_id = ?", params[:id])
          respond_to do |format|
            format.js
            format.html
          end
        end
        private
        def category_params
            params.require(:category).permit(:name,:image)

        end
    end 
end 