class CompanybillsController < ApplicationController
  before_action :set_companybill, only: %i[ show edit update destroy ]

  # GET /companybills or /companybills.json
  def index
    @companybills = Companybill.all
  end

  # GET /companybills/1 or /companybills/1.json
  def show
  end

  # GET /companybills/new
  def new
    @companybill = Companybill.new
  end

  # GET /companybills/1/edit
  def edit
  end

  # POST /companybills or /companybills.json
  def create
    @companybill = Companybill.new(companybill_params)

    respond_to do |format|
      if @companybill.save
        format.html { redirect_to companybill_url(@companybill), notice: "Companybill was successfully created." }
        format.json { render :show, status: :created, location: @companybill }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @companybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companybills/1 or /companybills/1.json
  def update
    respond_to do |format|
      if @companybill.update(companybill_params)
        format.html { redirect_to companybill_url(@companybill), notice: "Companybill was successfully updated." }
        format.json { render :show, status: :ok, location: @companybill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @companybill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companybills/1 or /companybills/1.json
  def destroy
    @companybill.destroy

    respond_to do |format|
      format.html { redirect_to companybills_url, notice: "Companybill was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companybill
      @companybill = Companybill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companybill_params
      params.require(:companybill).permit(:companybillname)
    end
end
