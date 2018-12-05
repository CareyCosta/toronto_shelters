class ShelterOrgsController < ApplicationController
  before_action :set_shelter_org, only: [:show, :update, :destroy]

  # GET /shelter_orgs
  def index
    @shelter_orgs = ShelterOrg.all

    render json: @shelter_orgs
  end

  # GET /shelter_orgs/1
  def show
    render json: @shelter_org
  end

  # POST /shelter_orgs
  def create
    @shelter_org = ShelterOrg.new(shelter_org_params)

    if @shelter_org.save
      render json: @shelter_org, status: :created, location: @shelter_org
    else
      render json: @shelter_org.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shelter_orgs/1
  def update
    if @shelter_org.update(shelter_org_params)
      render json: @shelter_org
    else
      render json: @shelter_org.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shelter_orgs/1
  def destroy
    @shelter_org.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shelter_org
      @shelter_org = ShelterOrg.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shelter_org_params
      params.require(:shelter_org).permit(:name, :address)
    end
end
