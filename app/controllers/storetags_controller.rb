class StoretagsController < ApplicationController
  before_action :set_storetag, only: %i[ show update destroy ]

  # GET /storetags
  def index
    @storetags = Storetag.all

    render json: @storetags
  end

  # GET /storetags/1
  def show
    render json: @storetag
  end

  # POST /storetags
  def create
    @storetag = Storetag.new(storetag_params)

    if @storetag.save
      render json: @storetag, status: :created, location: @storetag
    else
      render json: @storetag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /storetags/1
  def update
    if @storetag.update(storetag_params)
      render json: @storetag
    else
      render json: @storetag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /storetags/1
  def destroy
    @storetag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_storetag
      @storetag = Storetag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def storetag_params
      params.require(:storetag).permit(:term, :pattern_type, :main_tag, :sec_tag, :thir_tag)
    end
end
