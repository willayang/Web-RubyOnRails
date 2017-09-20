class LineItemsController < ApplicationController
skip_before_action :authorize 

  include CurrentCart
  before_action :set_cart, only:[:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
     #@cart =  current_cart
     product = Product.find(params[:product_id])
     #@line_items = @cart.line_items.build(product: product)
     @line_items = @cart.add_item(product.id)
 
     respond_to do |format|
       if @line_items.save
          format.html { redirect_to store_url,
            notice: 'your cart was successfully created.'}
          format.js { @current_item = @line_items }
          format.json {render :show,
            status: :created, location: @line_items }
       else
         format.html {render action: "new" }
         format.json { render json: @line_items.errors, status: unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_items.update(line_item_params)
        format.html { redirect_to @line_items, notice: 'Line item was successfully updated.' }
        format.json { render json: :show, status: :ok, location: @line_item }
      else
        format.html { render action: "edit" }
        format.json { render json: @line_items.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_items.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url, notice: 'Line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_items = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_items).permit(:product,:references, :cart,:belongs_to)
    end
end
