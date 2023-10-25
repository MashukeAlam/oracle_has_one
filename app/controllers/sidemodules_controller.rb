class SidemodulesController < ApplicationController
  before_action :set_sidemodule, only: %i[ show edit update destroy ]

  # GET /sidemodules or /sidemodules.json
  def index
    @sidemodules = Sidemodule.all
  end

  # GET /sidemodules/1 or /sidemodules/1.json
  def show
  end

  # GET /sidemodules/new
  def new
    @sidemodule = Sidemodule.new
  end

  # GET /sidemodules/1/edit
  def edit
  end

  # POST /sidemodules or /sidemodules.json
  def create
    @sidemodule = Sidemodule.new(sidemodule_params)

    respond_to do |format|
      if @sidemodule.save
        format.html { redirect_to sidemodule_url(@sidemodule), notice: "Sidemodule was successfully created." }
        format.json { render :show, status: :created, location: @sidemodule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sidemodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidemodules/1 or /sidemodules/1.json
  def update
    respond_to do |format|
      if @sidemodule.update(sidemodule_params)
        format.html { redirect_to sidemodule_url(@sidemodule), notice: "Sidemodule was successfully updated." }
        format.json { render :show, status: :ok, location: @sidemodule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sidemodule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidemodules/1 or /sidemodules/1.json
  def destroy
    @sidemodule.destroy

    respond_to do |format|
      format.html { redirect_to sidemodules_url, notice: "Sidemodule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidemodule
      @sidemodule = Sidemodule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sidemodule_params
      params.require(:sidemodule).permit(:name, :company_id)
    end
end
