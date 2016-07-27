class RequestActsController < ApplicationController
  before_action :set_request_act, only: [:show, :edit, :update, :destroy]
  before_action :set_sequence_act
  before_action :authenticate_user!, except: [:index, :show, :print]

  # GET /request_acts
  # GET /request_acts.json
  def index
    @request_acts = RequestAct.all
  end

  # GET /request_acts/1
  # GET /request_acts/1.json
  def show
  end

  # GET /request_acts/new
  def new
    @request_act = RequestAct.new
  end

  # GET /request_acts/1/edit
  def edit
  end

  def print
  end

  # POST /request_acts
  # POST /request_acts.json
  def create
    @request_act = current_user.request_act.new(request_act_params)
    @request_act.sequence = @sequence_act.sequence
    @request_act.date_sequence = @sequence_act.date_sequence

    respond_to do |format|
      if @request_act.save
        @sequence_act.update(sequence: @request_act.sequence+1)
        format.html { redirect_to @request_act, notice: 'Request act was successfully created.' }
        format.json { render :show, status: :created, location: @request_act }
      else
        format.html { render :new }
        format.json { render json: @request_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_acts/1
  # PATCH/PUT /request_acts/1.json
  def update
    respond_to do |format|
      if @request_act.update(request_act_params)
        format.html { redirect_to @request_act, notice: 'Request act was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_act }
      else
        format.html { render :edit }
        format.json { render json: @request_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_acts/1
  # DELETE /request_acts/1.json
  def destroy
    @request_act.destroy
    respond_to do |format|
      format.html { redirect_to request_acts_url, notice: 'Request act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_act
      @request_act = RequestAct.find(params[:id])
    end

    def set_sequence_act
      @sequence_act = SequenceAct.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_act_params
      params.require(:request_act).permit(:user_id, :type_act, :date_act, :description_act, :amount_act, :entity, :city_entity, :sequence, :date_sequence)
    end
end
