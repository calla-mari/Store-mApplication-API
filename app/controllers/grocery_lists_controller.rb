class GroceryListsController < ProtectedController
  before_action :set_grocery_list, only: %i[update destroy]

  # GET /grocery_lists
  def index
    @grocery_lists = GroceryList.all

    render json: @grocery_lists
  end

  # GET /grocery_lists/1
  def show
    render json: @grocery_list.find(params[:id])
  end

  # POST /grocery_lists
  def create
    @grocery_list = current_user.grocery_lists.build(grocery_list_params)

    if @grocery_list.save
      render json: @grocery_list, status: :created, location: @grocery_list
    else
      render json: @grocery_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grocery_lists/1
  def update
    if @grocery_list.update(grocery_list_params)
      render json: @grocery_list
    else
      render json: @grocery_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grocery_lists/1
  def destroy
    @grocery_list.destroy

    head :no_content
  end

  
  # Use callbacks to share common setup or constraints between actions.
  def set_grocery_list
    @grocery_list = current_user.grocery_lists.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def grocery_list_params
    params.require(:grocery_list).permit(:checkbox, :item, :amount)
  end

  private :set_grocery_list, :grocery_list_params
end
