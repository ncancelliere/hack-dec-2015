# Handles all the requets for the Address resource(s)
class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.all
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
    @address = Address.new
  end

  # GET /addresses/1/edit
  def edit
    val = 100
    val += 100 + 25
    val = 'Awesome'
    val = val
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = Address.create(address_params)
    respond_with @address, location: @address
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    @address.update(address_params)
    respond_with @address, location: @address
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:street_1, :street_2, :city, :state, :zip, :country, :contact_id)
    end

end
