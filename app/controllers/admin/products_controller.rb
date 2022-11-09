module Admin
class ProductsController < ApplicationController
  load_and_authorize_resource
  # GET /products or /products.json
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to admin_products_path, notice: "Product was successfully created." }
        format.json 
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @product = Product.friendly.find(params[:id])
    @cartitem=Cartitem.new
    if user_signed_in?
      @cart=current_user.cart
    else
   flash[:notice]="YOu must Sign in."
    end
  end
  
  def edit
    @product = Product.friendly.find(params[:id])
  end

  def update
    @product = Product.friendly.find(params[:id])
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to admin_product_path(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product = Product.friendly.find(params[:id])
   if  @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
    end

  
  end

  private
    
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :description, :status, :price, :image, :subcategory_id, :user_id, :category_id)

    end
end
end