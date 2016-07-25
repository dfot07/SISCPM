class AppearersController < ApplicationController

  before_action :set_appearer, only: [:show, :edit, :update, :destroy]
  before_action :set_request_property
  before_action :authenticate_user!, except: [:index, :show]

  # GET /appearers
  # GET /appearers.json
  def index
    #@appearers = Appearer.all
  end

  # GET /appearers/1
  # GET /appearers/1.json
  def show
  end

  # GET /appearers/new
  def new
    @appearer = Appearer.new
  end

  # GET /appearers/1/edit
  def edit
  end

  # POST /appearers
  # POST /appearers.json
  def create
    @appearer = current_user.appearer.new(appearer_params)
    @appearer.request_property = @request_property

    respond_to do |format|
      if @appearer.save
        format.html { redirect_to @appearer.request_property, notice: 'Appearer was successfully created.' }
        format.json { render :show, status: :created, location: @appearer.request_property }
      else
        format.html { render :new }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appearers/1
  # PATCH/PUT /appearers/1.json
  def update
    respond_to do |format|
      if @appearer.update(appearer_params)
        format.html { redirect_to @appearer.request_property, notice: 'Appearer was successfully updated.' }
        format.json { render :show, status: :ok, location: @appearer.request_property }
      else
        format.html { render :edit }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearers/1
  # DELETE /appearers/1.json
  def destroy
    @appearer.destroy
    respond_to do |format|
      format.html { redirect_to request_property_path(@request_property), notice: 'Appearer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appearer
      @appearer = Appearer.find(params[:id])
    end

    def set_request_property
      @request_property = RequestProperty.find(params[:request_property_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appearer_params
      params.require(:appearer).permit(:user_id, :request_property_id, :last_name, :civil_status)
    end
end
