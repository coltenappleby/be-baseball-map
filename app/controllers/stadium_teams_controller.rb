class StadiumTeamsController < ApplicationController
  before_action :set_stadium_team, only: [:show, :update, :destroy]

  # GET /stadium_teams
  def index
    @stadium_teams = StadiumTeam.all

    render json: @stadium_teams
  end

  # GET /stadium_teams/1
  def show
    render json: @stadium_team
  end

  # POST /stadium_teams
  def create
    @stadium_team = StadiumTeam.new(stadium_team_params)

    if @stadium_team.save
      render json: @stadium_team, status: :created, location: @stadium_team
    else
      render json: @stadium_team.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stadium_teams/1
  def update
    if @stadium_team.update(stadium_team_params)
      render json: @stadium_team
    else
      render json: @stadium_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stadium_teams/1
  def destroy
    @stadium_team.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium_team
      @stadium_team = StadiumTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stadium_team_params
      params.require(:stadium_team).permit(:stadium_id, :team_id)
    end
end
