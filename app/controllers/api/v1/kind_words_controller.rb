class Api::V1::KindWordsController < ApplicationController
  before_action :set_kind_word, only: [:show, :update, :destroy]

  # GET /kind_words
  def index
    @kind_words = KindWord.all

    render json: @kind_words
  end

  # GET /kind_words/1
  def show
    render json: @kind_word
  end

  # POST /kind_words
  def create
    @kind_word = KindWord.new(kind_word_params)

    if @kind_word.save
      render json: @kind_word, status: :created, location: @kind_word
    else
      render json: @kind_word.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kind_words/1
  def update
    if @kind_word.update(kind_word_params)
      render json: @kind_word
    else
      render json: @kind_word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kind_words/1
  def destroy
    @kind_word.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kind_word
      @kind_word = KindWord.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kind_word_params
      params.require(:kind_word).permit(:sibling_id, :when, :what, :to_whom, :points)
    end
end
