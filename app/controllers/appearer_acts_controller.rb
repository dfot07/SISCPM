class AppearerActsController < ApplicationController
  before_action :set_appearer_act, only: [:show, :edit, :update, :destroy]
  before_action :set_request_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /appearer_acts
  # GET /appearer_acts.json
  def index
    @appearer_acts = AppearerAct.all
  end

  # GET /appearer_acts/1
  # GET /appearer_acts/1.json
  def show
  end

  # GET /appearer_acts/new
  def new
    @appearer_act = AppearerAct.new
  end

  # GET /appearer_acts/1/edit
  def edit
  end

  # POST /appearer_acts
  # POST /appearer_acts.json
  def create
    @appearer_act = current_user.appearer_act.new(appearer_act_params)
    @appearer_act.request_act = @request_act

    respond_to do |format|
      if @appearer_act.save
        format.html { redirect_to @appearer_act.request_act, notice: 'Appearer act was successfully created.' }
        format.json { render :show, status: :created, location: @appearer_act.request_act }
      else
        format.html { render :new }
        format.json { render json: @appearer_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appearer_acts/1
  # PATCH/PUT /appearer_acts/1.json
  def update
    respond_to do |format|
      if @appearer_act.update(appearer_act_params)
        format.html { redirect_to @appearer_act.request_act, notice: 'Appearer act was successfully updated.' }
        format.json { render :show, status: :ok, location: @appearer_act.request_act }
      else
        format.html { render :edit }
        format.json { render json: @appearer_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearer_acts/1
  # DELETE /appearer_acts/1.json
  def destroy
    @appearer_act.destroy
    respond_to do |format|
      format.html { redirect_to request_act_path(@request_act), notice: 'Appearer act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appearer_act
      @appearer_act = AppearerAct.find(params[:id])
    end

    def set_request_act
      @request_act = RequestAct.find(params[:request_act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appearer_act_params
      params.require(:appearer_act).permit(:user, :request_act_id, :name, :type_appearer, :document, :class_appearer, :represent_appearer, :type_act)
    end
end
