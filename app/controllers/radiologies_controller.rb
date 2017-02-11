class RadiologiesController < ApplicationController
  before_action :set_radiology, only: [:show, :edit, :update, :destroy]

  # GET /radiologies
  # GET /radiologies.json
  def index
    @radiologies = Radiology.all
  end

  # GET /radiologies/1
  # GET /radiologies/1.json
  def show
  end

  # GET /radiologies/new
  def new
    @radiology = Radiology.new
  end

  # GET /radiologies/1/edit
  def edit
  end

  # POST /radiologies
  # POST /radiologies.json
  def create
    @radiology = Radiology.new(radiology_params)

    respond_to do |format|
      if @radiology.save
        format.html { redirect_to @radiology, notice: 'Radiology was successfully created.' }
        format.json { render :show, status: :created, location: @radiology }
      else
        format.html { render :new }
        format.json { render json: @radiology.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radiologies/1
  # PATCH/PUT /radiologies/1.json
  def update
    respond_to do |format|
      if @radiology.update(radiology_params)
        format.html { redirect_to @radiology, notice: 'Radiology was successfully updated.' }
        format.json { render :show, status: :ok, location: @radiology }
      else
        format.html { render :edit }
        format.json { render json: @radiology.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radiologies/1
  # DELETE /radiologies/1.json
  def destroy
    @radiology.destroy
    respond_to do |format|
      format.html { redirect_to radiologies_url, notice: 'Radiology was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radiology
      @radiology = Radiology.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radiology_params
      params.require(:radiology).permit(:viewer, :entry, :patient_id)
    end
end
