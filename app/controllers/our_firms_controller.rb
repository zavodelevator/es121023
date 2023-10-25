class OurFirmsController < ApplicationController
  before_action :set_our_firm, only: %i[ show edit update destroy ]

  # GET /our_firms or /our_firms.json
  def index
    @our_firms = OurFirm.all
  end

  # GET /our_firms/1 or /our_firms/1.json
  def show
  end

  # GET /our_firms/new
  def new
    @our_firm = OurFirm.new
  end

  # GET /our_firms/1/edit
  def edit
  end

  # POST /our_firms or /our_firms.json
  def create
    @our_firm = OurFirm.new(our_firm_params)

    respond_to do |format|
      if @our_firm.save
        format.html { redirect_to our_firm_url(@our_firm), notice: "Our firm was successfully created." }
        format.json { render :show, status: :created, location: @our_firm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @our_firm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /our_firms/1 or /our_firms/1.json
  def update
    respond_to do |format|
      if @our_firm.update(our_firm_params)
        format.html { redirect_to our_firm_url(@our_firm), notice: "Our firm was successfully updated." }
        format.json { render :show, status: :ok, location: @our_firm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @our_firm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /our_firms/1 or /our_firms/1.json
  def destroy
    @our_firm.destroy!

    respond_to do |format|
      format.html { redirect_to our_firms_url, notice: "Our firm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_firm
      @our_firm = OurFirm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def our_firm_params
      params.require(:our_firm).permit(:name, :edrpou, :email, :ipn, :persons, :data)
    end
end
