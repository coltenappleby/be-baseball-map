class StadiumNamesController < ApplicationController
  before_action :set_stadium_name, only: [:show, :update, :destroy]

  # GET /stadium_names
  def index
    @stadium_names = StadiumName.all

    render json: @stadium_names
  end

  # GET /stadium_names/1
  def show
    render json: @stadium_name
  end

  # POST /stadium_names
  def create
    @stadium_name = StadiumName.new(stadium_name_params)

    if @stadium_name.save
      render json: @stadium_name, status: :created, location: @stadium_name
    else
      render json: @stadium_name.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stadium_names/1
  def update
    if @stadium_name.update(stadium_name_params)
      render json: @stadium_name
    else
      render json: @stadium_name.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stadium_names/1
  def destroy
    @stadium_name.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stadium_name
      @stadium_name = StadiumName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stadium_name_params
      params.require(:stadium_name).permit(:stadium_id)
    end
end
