class Ipv4adminsController < ApplicationController
  before_action :set_ipv4admin, only: [:show, :edit, :update, :destroy]

  # GET /ipv4admins
  # GET /ipv4admins.json
  def index
    @ipv4admins = Ipv4admin.all
  end

  # GET /ipv4admins/1
  # GET /ipv4admins/1.json
  def show
  end

  # GET /ipv4admins/new
  def new
    @ipv4admin = Ipv4admin.new
  end

  # GET /ipv4admins/1/edit
  def edit
  end

  # POST /ipv4admins
  # POST /ipv4admins.json
  def create
    @ipv4admin = Ipv4admin.new(ipv4admin_params)

    respond_to do |format|
      if @ipv4admin.save
        format.html { redirect_to @ipv4admin, notice: 'Ipv4admin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ipv4admin }
      else
        format.html { render action: 'new' }
        format.json { render json: @ipv4admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipv4admins/1
  # PATCH/PUT /ipv4admins/1.json
  def update
    respond_to do |format|
      if @ipv4admin.update(ipv4admin_params)
        format.html { redirect_to @ipv4admin, notice: 'Ipv4admin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ipv4admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipv4admins/1
  # DELETE /ipv4admins/1.json
  def destroy
    @ipv4admin.destroy
    respond_to do |format|
      format.html { redirect_to ipv4admins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipv4admin
      @ipv4admin = Ipv4admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipv4admin_params
      params.require(:ipv4admin).permit(:id, :ip_status, :ip_address, :host, :note, :update_time)
    end
end
