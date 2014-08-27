class Admin::BusinessTypesController < ApplicationController
  layout 'admin'
  
  before_action :set_business_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/business_types
  # GET /admin/business_types.json
  def index
    @business_types = BusinessType.all
  end

  # GET /admin/business_types/1
  # GET /admin/business_types/1.json
  def show
  end

  # GET /admin/business_types/new
  def new
    @business_type = BusinessType.new
  end

  # GET /admin/business_types/1/edit
  def edit
  end

  # POST /admin/business_types
  # POST /admin/business_types.json
  def create
    @business_type = BusinessType.new(business_type_params)

    respond_to do |format|
      if @business_type.save
        format.html { redirect_to [:admin, @business_type], notice: 'Business type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @business_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @business_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/business_types/1
  # PATCH/PUT /admin/business_types/1.json
  def update
    respond_to do |format|
      if @business_type.update(business_type_params)
        format.html { redirect_to [:admin, @business_type], notice: 'Business type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @business_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/business_types/1
  # DELETE /admin/business_types/1.json
  def destroy
    @business_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_business_types_url, notice: 'Business type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_type
      @business_type = BusinessType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_type_params
      params.require(:business_type).permit(:name, :name, :title)
    end
end
