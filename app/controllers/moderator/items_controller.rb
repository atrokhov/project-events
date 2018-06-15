class Moderator::ItemsController < ModeratorController
  before_action :set_item, only: [:show]

 
  def index
    @items = Item.all
  end

  
  def show
  end

  
  def new
    @item = Item.new
  end

  
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        @item.categories.build
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  
  private
 
  def set_item
    @item = Item.find(params[:id])
  end

  
  def item_params
    params.require(:item).permit(:name, :description, :course, :price_of_course, :currency, :date, :description_of_course, :teachers, :primecategory_id, category_ids: [])
  end
end
