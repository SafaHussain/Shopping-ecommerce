class CartitemsController < ApplicationController
  before_action :set_cartitem, only: %i[ show edit update destroy ]

  # GET /cartitems or /cartitems.json
  def index
    if user_signed_in?
    @cartitems=user(current_user).cartitems
    end
  end

  # GET /cartitems/1 or /cartitems/1.json
  def show
    @cartitem=Cartitem.find(params[:id])
  end

  # GET /cartitems/new
  def new
    @cartitem = Cartitem.new
  end

  # GET /cartitems/1/edit
  def edit
  end

  # POST /cartitems or /cartitems.json
  def create
    @cartitem = Cartitem.new(cartitem_params)

      if @cartitem.save
        redirect_to cartitem_path(@cartitem)
        
      end
  end

  # PATCH/PUT /cartitems/1 or /cartitems/1.json
  def update
    respond_to do |format|
      if @cartitem.update(cartitem_params)
        format.html { redirect_to cartitem_url(@cartitem), notice: "Cartitem was successfully updated." }
        format.json { render :show, status: :ok, location: @cartitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cartitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartitems/1 or /cartitems/1.json
  def destroy
    @cartitem.destroy

    respond_to do |format|
      format.html { redirect_to cartitems_url, notice: "Cartitem was successfully destroyed." }
      format.json { head :no_content }
    end
    
  end

  def user(user)
    user.cart
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartitem
      @cartitem = Cartitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cartitem_params
      params.require(:cartitem).permit(:quantity, :product_id, :cart_id)
    end
end
