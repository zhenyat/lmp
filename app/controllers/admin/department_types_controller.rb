class Admin::DepartmentTypesController < ApplicationController
  layout 'admin'
  
  before_action :set_department_type, only: [:show, :edit, :update, :destroy]

  # GET /admin/department_types
  # GET /admin/department_types.json
  def index
    @department_types = DepartmentType.all
  end

  # GET /admin/department_types/1
  # GET /admin/department_types/1.json
  def show
  end

  # GET /admin/department_types/new
  def new
    @department_type = DepartmentType.new
  end

  # GET /admin/department_types/1/edit
  def edit
  end

  # POST /admin/department_types
  # POST /admin/department_types.json
  def create
    @department_type = DepartmentType.new(department_type_params)

    respond_to do |format|
      if @department_type.save
        format.html { redirect_to [:admin, @department_type], notice: 'Department type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @department_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @department_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/department_types/1
  # PATCH/PUT /admin/department_types/1.json
  def update
    respond_to do |format|
      if @department_type.update(department_type_params)
        format.html { redirect_to [:admin, @department_type], notice: 'Department type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @department_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/department_types/1
  # DELETE /admin/department_types/1.json
  def destroy
    @department_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_department_types_url, notice: 'Department type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department_type
      @department_type = DepartmentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_type_params
      params.require(:department_type).permit(:name, :name, :title)
    end
end
