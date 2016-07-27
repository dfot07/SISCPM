class SequenceActsController < ApplicationController
  before_action :set_sequence_act, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  # GET /sequence_acts
  # GET /sequence_acts.json
  def index
    @sequence_acts = SequenceAct.all
  end

  # GET /sequence_acts/1
  # GET /sequence_acts/1.json
  def show
  end

  # GET /sequence_acts/new
  def new
    @sequence_act = SequenceAct.new
  end

  # GET /sequence_acts/1/edit
  def edit
  end

  # POST /sequence_acts
  # POST /sequence_acts.json
  def create
    @sequence_act = current_user.sequence_act.new(sequence_act_params)

    respond_to do |format|
      if @sequence_act.save
        format.html { redirect_to @sequence_act, notice: 'Sequence act was successfully created.' }
        format.json { render :show, status: :created, location: @sequence_act }
      else
        format.html { render :new }
        format.json { render json: @sequence_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sequence_acts/1
  # PATCH/PUT /sequence_acts/1.json
  def update
    respond_to do |format|
      if @sequence_act.update(sequence_act_params)
        format.html { redirect_to @sequence_act, notice: 'Sequence act was successfully updated.' }
        format.json { render :show, status: :ok, location: @sequence_act }
      else
        format.html { render :edit }
        format.json { render json: @sequence_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sequence_acts/1
  # DELETE /sequence_acts/1.json
  def destroy
    @sequence_act.destroy
    respond_to do |format|
      format.html { redirect_to sequence_acts_url, notice: 'Sequence act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequence_act
      @sequence_act = SequenceAct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sequence_act_params
      params.require(:sequence_act).permit(:user_id, :sequence, :date_sequence)
    end
end
