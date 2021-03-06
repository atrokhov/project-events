class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    if params[:search]
    @items = Item.search(params[:search]).order("created_at DESC")
  else
    @items = Item.all.order('created_at DESC')
  end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_params
    params.require(:item).permit(:name, :description, :course, :price_of_course, :currency, :date, :description_of_course, :teachers, :primecategory_id, category_ids: [])
  end
end
