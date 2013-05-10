class WordsController < ApplicationController
  respond_to :html
  before_action :require_login
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  def index
    @words = Word.all
  end

  def show
  end

  def new
    @word = Word.new
  end

  def edit
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      redirect_to @word, notice: 'Word was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @word.update(word_params)
      redirect_to @word, notice: 'Word was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @word.destroy
    redirect_to words_url
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_word
    @word = Word.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def word_params
    params.require(:word).permit(:text)
  end

  def require_login
    head :unauthorized unless logged_in?
  end
end