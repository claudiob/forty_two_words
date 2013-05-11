class FeelingsController < ApplicationController
  before_action :set_feeling, only: [:show, :edit, :update, :destroy]

  # GET /feelings
  def index
    @feelings = Feeling.includes(:user, :word)
  end

  # GET /feelings/1
  def show
  end

  # GET /feelings/new
  def new
    @feeling = Feeling.new
  end

  # GET /feelings/1/edit
  def edit
  end

  # POST /feelings
  def create
    @feeling = Feeling.new(feeling_params)

    if @feeling.save
      redirect_to @feeling, notice: 'Feeling was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /feelings/1
  def update
    if @feeling.update(feeling_params)
      redirect_to @feeling, notice: 'Feeling was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /feelings/1
  def destroy
    @feeling.destroy
    redirect_to feelings_url, notice: 'Feeling was successfully destroyed.'
  end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_feeling
    @feeling = Feeling.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def feeling_params
    params.require(:feeling).permit(:user_id, :word_id)
  end
end