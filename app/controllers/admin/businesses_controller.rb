class Admin::BusinessesController < ApplicationController
  layout 'admin'
  
  before_action :set_business, only: [:show, :edit, :update, :destroy]

  # GET /admin/businesses
  # GET /admin/businesses.json
  def index
    @businesses = Business.all
  end

  # GET /admin/businesses/1
  # GET /admin/businesses/1.json
  def show
  end

  # GET /admin/businesses/new
  def new
    @business = Business.new
  end

  # GET /admin/businesses/1/edit
  def edit
  end

  # POST /admin/businesses
  # POST /admin/businesses.json
  def create
    @business = Business.new(business_params)

    respond_to do |format|
      if @business.save
        format.html { redirect_to [:admin, @business], notice: 'Business was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business }
      else
        format.html { render action: 'new' }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/businesses/1
  # PATCH/PUT /admin/businesses/1.json
  def update
    respond_to do |format|
      if @business.update(business_params)
        format.html { redirect_to [:admin, @business], notice: 'Business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/businesses/1
  # DELETE /admin/businesses/1.json
  def destroy
    @business.destroy
    respond_to do |format|
      format.html { redirect_to admin_businesses_url, notice: 'Business was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business
      @business = Business.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_params
      params.require(:business).permit(:name, :name, :title)
    end
end
