class PropertyCertificateSequencesController < ApplicationController
  before_action :set_property_certificate_sequence, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /property_certificate_sequences
  # GET /property_certificate_sequences.json
  def index
    @property_certificate_sequences = PropertyCertificateSequence.all
  end

  # GET /property_certificate_sequences/1
  # GET /property_certificate_sequences/1.json
  def show
  end

  # GET /property_certificate_sequences/new
  def new
    @property_certificate_sequence = PropertyCertificateSequence.new
  end

  # GET /property_certificate_sequences/1/edit
  def edit
  end

  # POST /property_certificate_sequences
  # POST /property_certificate_sequences.json
  def create
    @property_certificate_sequence = current_user.property_certificate_sequence.new(property_certificate_sequence_params)

    respond_to do |format|
      if @property_certificate_sequence.save
        format.html { redirect_to @property_certificate_sequence, notice: 'Property certificate sequence was successfully created.' }
        format.json { render :show, status: :created, location: @property_certificate_sequence }
      else
        format.html { render :new }
        format.json { render json: @property_certificate_sequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_certificate_sequences/1
  # PATCH/PUT /property_certificate_sequences/1.json
  def update
    respond_to do |format|
      if @property_certificate_sequence.update(property_certificate_sequence_params)
        format.html { redirect_to @property_certificate_sequence, notice: 'Property certificate sequence was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_certificate_sequence }
      else
        format.html { render :edit }
        format.json { render json: @property_certificate_sequence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_certificate_sequences/1
  # DELETE /property_certificate_sequences/1.json
  def destroy
    @property_certificate_sequence.destroy
    respond_to do |format|
      format.html { redirect_to property_certificate_sequences_url, notice: 'Property certificate sequence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_certificate_sequence
      @property_certificate_sequence = PropertyCertificateSequence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_certificate_sequence_params
      params.require(:property_certificate_sequence).permit(:user_id, :sequence, :date_sequence)
    end
end
