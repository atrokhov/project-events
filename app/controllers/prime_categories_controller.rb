class PrimeCategoriesController < ApplicationController
  before_action :set_prime_category, only: [:show, :edit, :update, :destroy]

  # GET /prime_categories
  # GET /prime_categories.json
  def index
    @prime_categories = PrimeCategory.all
  end

  # GET /prime_categories/1
  # GET /prime_categories/1.json
  def show
  end

  # GET /prime_categories/new
  def new
    @prime_category = PrimeCategory.new
  end

  # GET /prime_categories/1/edit
  def edit
  end

  # POST /prime_categories
  # POST /prime_categories.json
  def create
    @prime_category = PrimeCategory.new(prime_category_params)

    respond_to do |format|
      if @prime_category.save
        format.html { redirect_to @prime_category, notice: 'Prime category was successfully created.' }
        format.json { render :show, status: :created, location: @prime_category }
      else
        format.html { render :new }
        format.json { render json: @prime_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prime_categories/1
  # PATCH/PUT /prime_categories/1.json
  def update
    respond_to do |format|
      if @prime_category.update(prime_category_params)
        format.html { redirect_to @prime_category, notice: 'Prime category was successfully updated.' }
        format.json { render :show, status: :ok, location: @prime_category }
      else
        format.html { render :edit }
        format.json { render json: @prime_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prime_categories/1
  # DELETE /prime_categories/1.json
  def destroy
    @prime_category.destroy
    respond_to do |format|
      format.html { redirect_to prime_categories_url, notice: 'Prime category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prime_category
      @prime_category = PrimeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prime_category_params
      params.require(:prime_category).permit(:name, :description)
    end
end
