class Admin::PrimecategoriesController < AdminController
  before_action :set_primecategory, only: [:show, :edit, :update, :destroy]

  # GET /primecategories
  # GET /primecategories.json
  def index
    @primecategories = Primecategory.all
  end

  # GET /primecategories/1
  # GET /primecategories/1.json
  def show
  end

  # GET /primecategories/new
  def new
    @primecategory = Primecategory.new
  end

  # GET /primecategories/1/edit
  def edit
  end

  # POST /primecategories
  # POST /primecategories.json
  def create
    @primecategory = Primecategory.new(primecategory_params)

    respond_to do |format|
      if @primecategory.save
        format.html { redirect_to admin_primecategories_url, notice: 'Primecategory was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @primecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primecategories/1
  # PATCH/PUT /primecategories/1.json
  def update
    respond_to do |format|
      if @primecategory.update(primecategory_params)
        format.html { redirect_to admin_primecategories_url, notice: 'Primecategory was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @primecategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primecategories/1
  # DELETE /primecategories/1.json
  def destroy
    @primecategory.destroy
    respond_to do |format|
      format.html { redirect_to admin_primecategories_url, notice: 'Primecategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_primecategory
    @primecategory = Primecategory.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def primecategory_params
    params.require(:primecategory).permit(:name, :description)
  end
end
