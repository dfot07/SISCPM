class RequestSequencePropertiesController < ApplicationController
  before_action :set_request_sequence_property, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /request_sequence_properties
  # GET /request_sequence_properties.json
  def index
    @request_sequence_properties = RequestSequenceProperty.all
  end

  # GET /request_sequence_properties/1
  # GET /request_sequence_properties/1.json
  def show
  end

  # GET /request_sequence_properties/new
  def new
    @request_sequence_property = RequestSequenceProperty.new
  end

  # GET /request_sequence_properties/1/edit
  def edit
  end

  # POST /request_sequence_properties
  # POST /request_sequence_properties.json
  def create
    @request_sequence_property = current_user.request_sequence_property.new(request_sequence_property_params)

    respond_to do |format|
      if @request_sequence_property.save
        format.html { redirect_to @request_sequence_property, notice: 'Request sequence property was successfully created.' }
        format.json { render :show, status: :created, location: @request_sequence_property }
      else
        format.html { render :new }
        format.json { render json: @request_sequence_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_sequence_properties/1
  # PATCH/PUT /request_sequence_properties/1.json
  def update
    respond_to do |format|
      if @request_sequence_property.update(request_sequence_property_params)
        format.html { redirect_to @request_sequence_property, notice: 'Request sequence property was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_sequence_property }
      else
        format.html { render :edit }
        format.json { render json: @request_sequence_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_sequence_properties/1
  # DELETE /request_sequence_properties/1.json
  def destroy
    @request_sequence_property.destroy
    respond_to do |format|
      format.html { redirect_to request_sequence_properties_url, notice: 'Request sequence property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_sequence_property
      @request_sequence_property = RequestSequenceProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_sequence_property_params
      params.require(:request_sequence_property).permit(:user_id, :sequence, :date_sequence)
    end
end
