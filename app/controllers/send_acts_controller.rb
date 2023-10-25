class SendActsController < ApplicationController
  before_action :set_send_act, only: %i[ show edit update destroy ]

  # GET /send_acts or /send_acts.json
  def index
    @send_acts = SendAct.all
  end

  # GET /send_acts/1 or /send_acts/1.json
  def show
  end

  # GET /send_acts/new
  def new
    @send_act = SendAct.new
  end

  # GET /send_acts/1/edit
  def edit
  end

  # POST /send_acts or /send_acts.json
  def create
    @send_act = SendAct.new(send_act_params)

    respond_to do |format|
      if @send_act.save
        format.html { redirect_to send_act_url(@send_act), notice: "Send act was successfully created." }
        format.json { render :show, status: :created, location: @send_act }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @send_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /send_acts/1 or /send_acts/1.json
  def update
    respond_to do |format|
      if @send_act.update(send_act_params)
        format.html { redirect_to send_act_url(@send_act), notice: "Send act was successfully updated." }
        format.json { render :show, status: :ok, location: @send_act }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @send_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_acts/1 or /send_acts/1.json
  def destroy
    @send_act.destroy!

    respond_to do |format|
      format.html { redirect_to send_acts_url, notice: "Send act was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_act
      @send_act = SendAct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_act_params
      params.require(:send_act).permit(:data)
    end
end
