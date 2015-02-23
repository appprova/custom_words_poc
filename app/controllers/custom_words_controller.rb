class CustomWordsController < ApplicationController
  before_action :set_custom_word, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  respond_to :html

  def index
    @custom_words = CustomWord.all
    respond_with(@custom_words)
  end

  def show
    respond_with(@custom_word)
  end

  def new
    @custom_word = CustomWord.new
    respond_with(@custom_word)
  end

  def edit
  end

  def create
    @custom_word = CustomWord.new(custom_word_params)
    @custom_word.save
    respond_with(@custom_word)
  end

  def update
    @custom_word.update(custom_word_params)
    respond_with(@custom_word)
  end

  def destroy
    @custom_word.destroy
    respond_with(@custom_word)
  end

  private
    def set_custom_word
      @custom_word = CustomWord.find(params[:id])
    end

    def custom_word_params
      params.require(:custom_word).permit(:key, :word, :user_id)
    end
end
