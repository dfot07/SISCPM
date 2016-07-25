class RequestPropertiesController < ApplicationController
  before_action :set_request_property, only: [:show, :edit, :update, :destroy, :print]
  before_action :set_request_sequence_property
  before_action :set_property_certificate_sequence
  before_action :authenticate_user!, except: [:index, :show, :print]

  # GET /request_properties
  # GET /request_properties.json
  def index
    @request_properties = RequestProperty.all
  end

  # GET /request_properties/1
  # GET /request_properties/1.json
  def show
  end

  # GET /request_properties/new
  def new
    @request_property = RequestProperty.new
  end

  def print
  end

  # GET /request_properties/1/edit
  def edit
  end

  # POST /request_properties
  # POST /request_properties.json
  def create
    @request_property = current_user.request_property.new(request_property_params)
    @request_property.sequence_request = @request_sequence_property.sequence
    @request_property.sequence_certificate = @property_certificate_sequence.sequence
    @request_property.date_sequence = @request_sequence_property.date_sequence
    @request_property.date_certificate = @property_certificate_sequence.date_sequence

    respond_to do |format|
      if @request_property.save
        @request_sequence_property.update(sequence: @request_property.sequence_request+1)
        @property_certificate_sequence.update(sequence: @request_property.sequence_certificate+1)
        format.html { redirect_to @request_property, notice: 'Request property was successfully created.' }
        format.json { render :show, status: :created, location: @request_property }
      else
        format.html { render :new }
        format.json { render json: @request_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_properties/1
  # PATCH/PUT /request_properties/1.json
  def update
    respond_to do |format|
      if @request_property.update(request_property_params)
        format.html { redirect_to @request_property, notice: 'Request property was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_property }
      else
        format.html { render :edit }
        format.json { render json: @request_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_properties/1
  # DELETE /request_properties/1.json
  def destroy
    @request_property.destroy
    respond_to do |format|
      format.html { redirect_to request_properties_url, notice: 'Request property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_property
      @request_property = RequestProperty.find(params[:id])
    end

    def set_request_sequence_property
      @request_sequence_property = RequestSequenceProperty.first
    end

    def set_property_certificate_sequence
      @property_certificate_sequence = PropertyCertificateSequence.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_property_params
      params.require(:request_property).permit(:user_id, :certificate, :request_certificate, :other_type, :other_certificate, :comment, :sequence_request, :sequence_certificate)
    end
end
