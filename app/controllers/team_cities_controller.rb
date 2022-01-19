class TeamCitiesController < ApplicationController
  before_action :set_team_city, only: [:show, :update, :destroy]

  # GET /team_cities
  def index
    @team_cities = TeamCity.all

    render json: @team_cities
  end

  # GET /team_cities/1
  def show
    render json: @team_city
  end

  # POST /team_cities
  def create
    @team_city = TeamCity.new(team_city_params)

    if @team_city.save
      render json: @team_city, status: :created, location: @team_city
    else
      render json: @team_city.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /team_cities/1
  def update
    if @team_city.update(team_city_params)
      render json: @team_city
    else
      render json: @team_city.errors, status: :unprocessable_entity
    end
  end

  # DELETE /team_cities/1
  def destroy
    @team_city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_city
      @team_city = TeamCity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def team_city_params
      params.require(:team_city).permit(:city_id, :team_id)
    end
end
