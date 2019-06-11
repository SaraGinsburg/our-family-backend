class api::v1::NiceDeedsController < ApplicationController
  before_action :set_nice_deed, only: [:show, :update, :destroy]

  # GET /nice_deeds
  def index
    @nice_deeds = NiceDeed.all
    nice_deeds_json = NiceDeedSerializer.new(@nice_deeds).serialized_json
    render json: nice_deeds_json

    # render json: @nice_deeds
  end

  # GET /nice_deeds/1
  def show
    nice_deed_json = NiceDeedSerializer.new(@nice_deed).serialized_json
    render json: nice_deed_json

    # render json: @nice_deed
  end

  # POST /nice_deeds
  def create
    @nice_deed = NiceDeed.new(nice_deed_params)

    if @nice_deed.save
      render json: @nice_deed, status: :created, location: @nice_deed
    else
      render json: @nice_deed.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nice_deeds/1
  def update
    if @nice_deed.update(nice_deed_params)
      render json: @nice_deed
    else
      render json: @nice_deed.errors, status: :unprocessable_entity
    end
  end

  # DELETE /nice_deeds/1
  def destroy
    @nice_deed.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nice_deed
      @nice_deed = NiceDeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nice_deed_params
      params.require(:nice_deed).permit(:sibling_id, :when, :what, :to_whom, :picture, :points)
    end
end
