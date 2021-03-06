class Api::V1::MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :update, :destroy]

  # GET /milestones
  def index
    if logged_in?
      @milestones = current_user.milestones
      render json: MilestoneSerializer.new(@milestones)
    else
      render json: {
        error: "You must be looged in to see milestones"
      }
    end
  end

  # GET /milestones/1
  def show
    # milestone_json = MilestoneSerializer.new(@milestone).serialized_json
    # render json: milestone_json

    render json: @milestone
  end

  # POST /milestones
  def create
    @milestone = current_user.milestones.build(milestone_params)

    if @milestone.save
      render json: MilestoneSerializer.new(@milestone), status: :created
    else
      error_msg = {
        error: @milestone.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  # PATCH/PUT /milestones/1
  def update
    if @milestone.update(milestone_params)
      render json: MilestoneSerializer.new(@milestone), status: :ok
    else
      error_msg = {
        error: @milestone.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  # DELETE /milestones/1
  def destroy
    if @milestone.destroy
      render json: {successMsg: "Milestone was successfully removed"}, status: :ok
    else
      error_msg = {
        error: "Milestone was not removed"
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_milestone
      @milestone = Milestone.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def milestone_params
      params.require(:milestone).permit(:heading, :when, :what, :picture)
    end
end
