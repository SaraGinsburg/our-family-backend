class api::v1::MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :update, :destroy]

  # GET /milestones
  def index
    @milestones = Milestone.all
    milestones_json = MilestoneSerializer.new(@milestones).serialized_json
    render json: milestones_json

    # render json: @milestones
  end

  # GET /milestones/1
  def show
    milestone_json = MilestoneSerializer.new(@milestone).serialized_json
    render json: milestone_json

    # render json: @milestone
  end

  # POST /milestones
  def create
    @milestone = Milestone.new(milestone_params)

    if @milestone.save
      render json: @milestone, status: :created, location: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /milestones/1
  def update
    if @milestone.update(milestone_params)
      render json: @milestone
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /milestones/1
  def destroy
    @milestone.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Milestone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:milestone).permit(:when, :what, :picture, :sibling_id)
    end
end
