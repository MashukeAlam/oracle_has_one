class CompanyinvoicesController < ApplicationController
  before_action :set_companyinvoice, only: %i[ show edit update destroy ]

  # GET /companyinvoices or /companyinvoices.json
  def index
    @companyinvoices = Companyinvoice.all
  end

  # GET /companyinvoices/1 or /companyinvoices/1.json
  def show
  end

  # GET /companyinvoices/new
  def new
    @companyinvoice = Companyinvoice.new
  end

  # GET /companyinvoices/1/edit
  def edit
  end

  # POST /companyinvoices or /companyinvoices.json
  def create
    @companyinvoice = Companyinvoice.new(companyinvoice_params)

    respond_to do |format|
      if @companyinvoice.save
        format.html { redirect_to companyinvoice_url(@companyinvoice), notice: "Companyinvoice was successfully created." }
        format.json { render :show, status: :created, location: @companyinvoice }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @companyinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyinvoices/1 or /companyinvoices/1.json
  def update
    respond_to do |format|
      if @companyinvoice.update(companyinvoice_params)
        format.html { redirect_to companyinvoice_url(@companyinvoice), notice: "Companyinvoice was successfully updated." }
        format.json { render :show, status: :ok, location: @companyinvoice }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @companyinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyinvoices/1 or /companyinvoices/1.json
  def destroy
    @companyinvoice.destroy

    respond_to do |format|
      format.html { redirect_to companyinvoices_url, notice: "Companyinvoice was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyinvoice
      @companyinvoice = Companyinvoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def companyinvoice_params
      params.require(:companyinvoice).permit(:invoicename, :companybill_id)
    end
end
