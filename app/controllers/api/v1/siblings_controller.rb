class Api::V1::SiblingsController < ApplicationController
  before_action :set_sibling, only: [:show, :update]

  # GET /siblings
  def index
    @siblings = Sibling.all
    siblings_json =  SiblingSerializer.new(@siblings).serialized_json
    render json: siblings_json
    # render json: @siblings
  end

  # GET /siblings/1
  def show
    sibling_json =  SiblingSerializer.new(@sibling).serialized_json
    render json: sibling_json
    # render json: @sibling
  end

  # POST /siblings
  def create
    @sibling = Sibling.new(sibling_params)

    if @sibling.save
      render json: @sibling, status: :created, location: @sibling
    else
      render json: @sibling.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /siblings/1
  def update
    if @sibling.update(sibling_params)
      render json: @sibling
    else
      render json: @sibling.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sibling
      @sibling = Sibling.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sibling_params
      params.require(:sibling).permit(:first_name, :last_name,  :birthdate, :picture, :points_earned)
    end
end
