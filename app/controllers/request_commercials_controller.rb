class RequestCommercialsController < ApplicationController
  before_action :set_request_commercial, only: [:show, :edit, :update, :destroy]

  # GET /request_commercials
  # GET /request_commercials.json
  def index
    @request_commercials = RequestCommercial.all
  end

  # GET /request_commercials/1
  # GET /request_commercials/1.json
  def show
  end

  # GET /request_commercials/new
  def new
    @request_commercial = RequestCommercial.new
  end

  # GET /request_commercials/1/edit
  def edit
  end

  # POST /request_commercials
  # POST /request_commercials.json
  def create
    @request_commercial = RequestCommercial.new(request_commercial_params)

    respond_to do |format|
      if @request_commercial.save
        format.html { redirect_to @request_commercial, notice: 'Request commercial was successfully created.' }
        format.json { render :show, status: :created, location: @request_commercial }
      else
        format.html { render :new }
        format.json { render json: @request_commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_commercials/1
  # PATCH/PUT /request_commercials/1.json
  def update
    respond_to do |format|
      if @request_commercial.update(request_commercial_params)
        format.html { redirect_to @request_commercial, notice: 'Request commercial was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_commercial }
      else
        format.html { render :edit }
        format.json { render json: @request_commercial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_commercials/1
  # DELETE /request_commercials/1.json
  def destroy
    @request_commercial.destroy
    respond_to do |format|
      format.html { redirect_to request_commercials_url, notice: 'Request commercial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_commercial
      @request_commercial = RequestCommercial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_commercial_params
      params.require(:request_commercial).permit(:user_id, :certificate, :request_certificate, :comment, :sequence_request, :sequence_certificate, :date_sequence, :date_certificate, :other_type, :other_certificate)
    end
end
