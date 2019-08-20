class Api::V1::NiceDeedsController < ApplicationController
  before_action :set_nice_deed, only: [:show, :update, :destroy]

  # GET /nice_deeds
  def index
    if logged_in?
      @nice_deeds = current_user.niceDeeds
      render json: NiceDeedSerializer.new(@nice_deeds)
    else
      render json: {
        error: "You must be looged in to see NiceDeeds"
      }
    end
  end

  # GET /nice_deeds/1
  def show
    render json: @nice_deed
  end

  # POST /nice_deeds
  def create
    @nice_deed = current_user.niceDeeds.build(nice_deed_params)

    @reporting_user = User.find(current_user.id)
    @reporting_user.points_earned += @nice_deed.points

    @who_user = User.find(params[:who])
    @who_user.points_earned += @nice_deed.points

    if @nice_deed.save
      render json: NiceDeedSerializer.new(@nice_deed), status: :created
    else
      error_msg = {
        error: @nice_deed.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end

    if !@who_user.save
      error_msg = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end

    if !@reporting_user.save
      error_msg = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nice_deeds/1
  def update
    if @nice_deed.update(nice_deed_params)
      render json: NiceDeedSerializer.new(@nice_deed), status: :ok
    else
      rerror_msg = {
        error: @nice_deed.errors.full_messages.to_sentence
      }
      render     end
  end

  # DELETE /nice_deeds/1
  def destroy
    if @nice_deed.destroy
      @reporting_user = User.find(current_user.id)
      @reporting_user.points_earned -= @nice_deed.points
      @reporting_user.save

      @who_user = User.find(@nice_deed.who)
      @who_user.points_earned -= @nice_deed.points
      @who_user.save
      render json: {successMsg: "NiceDeed  was successfully removed"}, status: :ok
    else
      error_msg = {
        error: "NiceDeed was not removed"
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nice_deed
      @nice_deed = NiceDeed.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nice_deed_params
      params.require(:nice_deed).permit(:id, :heading, :when, :what, :who,  :points)
    end
end
