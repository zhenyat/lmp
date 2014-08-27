class Admin::CompetenciesController < ApplicationController
  layout 'admin'
  
  before_action :set_competency, only: [:show, :edit, :update, :destroy]

  # GET /admin/competencies
  # GET /admin/competencies.json
  def index
    @competencies = Competency.all
  end

  # GET /admin/competencies/1
  # GET /admin/competencies/1.json
  def show
  end

  # GET /admin/competencies/new
  def new
    @competency = Competency.new
  end

  # GET /admin/competencies/1/edit
  def edit
  end

  # POST /admin/competencies
  # POST /admin/competencies.json
  def create
    @competency = Competency.new(competency_params)

    respond_to do |format|
      if @competency.save
        format.html { redirect_to [:admin, @competency], notice: 'Competency was successfully created.' }
        format.json { render action: 'show', status: :created, location: @competency }
      else
        format.html { render action: 'new' }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/competencies/1
  # PATCH/PUT /admin/competencies/1.json
  def update
    respond_to do |format|
      if @competency.update(competency_params)
        format.html { redirect_to [:admin, @competency], notice: 'Competency was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @competency.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/competencies/1
  # DELETE /admin/competencies/1.json
  def destroy
    @competency.destroy
    respond_to do |format|
      format.html { redirect_to admin_competencies_url, notice: 'Competency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competency
      @competency = Competency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competency_params
      params.require(:competency).permit(:position_id, :cluster_id, :name, :title, :description, :rank)
    end
end
