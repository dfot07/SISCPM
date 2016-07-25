class PetitionersController < ApplicationController
  before_action :set_petitioner, only: [:show, :edit, :update, :destroy]
  before_action :set_request_property
  before_action :authenticate_user!, except: [:index, :show]

  # GET /petitioners
  # GET /petitioners.json
  def index
    #@petitioners = Petitioner.all
  end

  # GET /petitioners/1
  # GET /petitioners/1.json
  def show
  end

  # GET /petitioners/new
  def new
    @petitioner = Petitioner.new
  end

  # GET /petitioners/1/edit
  def edit
  end

  # POST /petitioners
  # POST /petitioners.json
  def create
    @petitioner = current_user.petitioner.new(petitioner_params)
    @petitioner.request_property = @request_property

    respond_to do |format|
      if @petitioner.save
        format.html { redirect_to @petitioner.request_property, notice: 'Petitioner was successfully created.' }
        format.json { render :show, status: :created, location: @petitioner.request_property }
      else
        format.html { render :new }
        format.json { render json: @petitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petitioners/1
  # PATCH/PUT /petitioners/1.json
  def update
    respond_to do |format|
      if @petitioner.update(petitioner_params)
        format.html { redirect_to @petitioner.request_property, notice: 'Petitioner was successfully updated.' }
        format.json { render :show, status: :ok, location: @petitioner.request_property }
      else
        format.html { render :edit }
        format.json { render json: @petitioner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petitioners/1
  # DELETE /petitioners/1.json
  def destroy
    @petitioner.destroy
    respond_to do |format|
      format.html { redirect_to request_property_path(@request_property), notice: 'Petitioner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petitioner
      @petitioner = Petitioner.find(params[:id])
    end

    def set_request_property
      @request_property = RequestProperty.find(params[:request_property_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petitioner_params
      params.require(:petitioner).permit(:user_id, :request_property_id, :last_name, :name, :document, :civil_status, :address, :phone, :email, :infodigital)
    end
end
