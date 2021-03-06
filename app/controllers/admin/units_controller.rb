class Admin::UnitsController < ApplicationController
  layout 'admin'
  
  before_action :set_unit, only: [:show, :edit, :update, :destroy]

  # GET /admin/units
  # GET /admin/units.json
  def index
    @units = Unit.all
  end

  # GET /admin/units/1
  # GET /admin/units/1.json
  def show
  end

  # GET /admin/units/new
  def new
    @unit = Unit.new
  end

  # GET /admin/units/1/edit
  def edit
  end

  # POST /admin/units
  # POST /admin/units.json
  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to [:admin, @unit], notice: 'Unit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unit }
      else
        format.html { render action: 'new' }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/units/1
  # PATCH/PUT /admin/units/1.json
  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to [:admin, @unit], notice: 'Unit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/units/1
  # DELETE /admin/units/1.json
  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to admin_units_url, notice: 'Unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit
      @unit = Unit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_params
      params.require(:unit).permit(:unit_type_id, :name, :name, :title)
    end
end
