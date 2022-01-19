class CapacitiesController < ApplicationController
  before_action :set_capacity, only: [:show, :update, :destroy]

  # GET /capacities
  def index
    @capacities = Capacity.all

    render json: @capacities
  end

  # GET /capacities/1
  def show
    render json: @capacity
  end

  # POST /capacities
  def create
    @capacity = Capacity.new(capacity_params)

    if @capacity.save
      render json: @capacity, status: :created, location: @capacity
    else
      render json: @capacity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /capacities/1
  def update
    if @capacity.update(capacity_params)
      render json: @capacity
    else
      render json: @capacity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /capacities/1
  def destroy
    @capacity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capacity
      @capacity = Capacity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capacity_params
      params.require(:capacity).permit(:stadium_id, :year_start, :year_end, :capacity)
    end
end
