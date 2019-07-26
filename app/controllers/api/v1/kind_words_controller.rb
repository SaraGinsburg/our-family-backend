require 'pry'

class Api::V1::KindWordsController < ApplicationController
  before_action :set_kind_word, only: [:show, :update, :destroy]


  # GET /kind_words
  def index
    if logged_in?
      @kind_words = current_user.kindWords
      render json: KindWordSerializer.new(@kind_words)
    else
      render json: {
        error: "You must be looged in to see kindWords"
      }
    end
  end

  # GET /kind_words/1
  def show
      render json: @kind_word
  end

  # POST /kind_words
  def create

    @kind_word = current_user.kindWords.build(kind_word_params)

    @reporting_user = User.find(current_user.id)
    @reporting_user.points_earned += 1

    @who_user = User.find(params[:who])
    @who_user.points_earned += 1

    if @kind_word.save
      render json: KindWordSerializer.new(@kind_word), status: :created
    else
      error_msg = {
        error: @kind_word.errors.full_messages.to_sentence
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

  # PATCH/PUT /kind_words/1
  def update
    if @kind_word.update(kind_word_params)
      render json: KindWordSerializer.new(@kind_word), status: :ok
    else
      rerror_msg = {
        error: @kind_word.errors.full_messages.to_sentence
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  # DELETE /kind_words/1
  def destroy
    if @kind_word.destroy
      render json: {successMsg: "KindWord  was successfully removed"}, status: :ok
    else
      error_msg = {
        error: "KindWord was not removed"
      }
      render json: error_msg,  status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_word
      @kind_word = KindWord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kind_word_params
      params.require(:kind_word).permit(:id, :heading, :when, :what, :who)
    end
end
