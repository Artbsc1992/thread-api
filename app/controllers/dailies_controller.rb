class DailiesController < ApplicationController
  before_action :set_daily, only: %i[ show update destroy ]

  # GET /dailies
  # GET /dailies.json
  def index
    @dailies = Daily.all
    render json: @dailies
  end

  # GET /dailies/1
  # GET /dailies/1.json
  def show
    render json: @daily
  end

  # POST /dailies
  # POST /dailies.json
  def create
    @daily = Daily.new(daily_params)

    if @daily.save
      render :show, status: :created, location: @daily
    else
      render json: @daily.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dailies/1
  # PATCH/PUT /dailies/1.json
  def update
    if @daily.update(daily_params)
      render :show, status: :ok, location: @daily
    else
      render json: @daily.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dailies/1
  # DELETE /dailies/1.json
  def destroy
    if @daily.destroyed?
      render json: { 'message': 'Daily deleted.' }, status: 204, location: @daily
    else
      render json: @daily.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily
      @daily = Daily.find(params[:id]).includes(:comments)
    end

    # Only allow a list of trusted parameters through.
    def daily_params
      params.fetch(:daily, {}).permit(:content, :user_id, :img)
    end
end
