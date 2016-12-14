class PassengerDetailsController < ApplicationController
  before_action :set_passenger_detail, only: [:show, :edit, :update, :destroy]

  # GET /passenger_details
  # GET /passenger_details.json
  def index
    @passenger_details = PassengerDetail.all
  end

  # GET /passenger_details/1
  # GET /passenger_details/1.json
  def show
  end

  # GET /passenger_details/new
  def new
    @passenger_detail = PassengerDetail.new
  end

  # GET /passenger_details/1/edit
  def edit
  end

  # POST /passenger_details
  # POST /passenger_details.json
  def create
    @passenger_detail = PassengerDetail.new(passenger_detail_params)

    respond_to do |format|
      if @passenger_detail.save
        format.html { redirect_to @passenger_detail, notice: 'Passenger detail was successfully created.' }
        format.json { render :show, status: :created, location: @passenger_detail }
      else
        format.html { render :new }
        format.json { render json: @passenger_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passenger_details/1
  # PATCH/PUT /passenger_details/1.json
  def update
    respond_to do |format|
      if @passenger_detail.update(passenger_detail_params)
        format.html { redirect_to @passenger_detail, notice: 'Passenger detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @passenger_detail }
      else
        format.html { render :edit }
        format.json { render json: @passenger_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passenger_details/1
  # DELETE /passenger_details/1.json
  def destroy
    @passenger_detail.destroy
    respond_to do |format|
      format.html { redirect_to passenger_details_url, notice: 'Passenger detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger_detail
      @passenger_detail = PassengerDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passenger_detail_params
      params.require(:passenger_detail).permit(:first_name, :last_name, :gender, :nationality, :passport_number)
    end
end
