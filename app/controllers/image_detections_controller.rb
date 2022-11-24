class ImageDetectionsController < ApplicationController
  before_action :set_image_detection, only: %i[ show update destroy ]

  # GET /image_detections
  def index
    @image_detections = ImageDetection.all

    render json: @image_detections
  end

  # GET /image_detections/1
  def show
    render json: {url: @image_detection.url, result: @image_detection.result, id: @image_detection.id}
  end

  # POST /image_detections
  def create
    @image_detection = ImageDetection.new(send_url_params)

    if @image_detection.save
      render json: {url: @image_detection.url, result: @image_detection.result, id: @image_detection.id}, status: :created, location: @image_detection
    else
      render json: @image_detection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /image_detections/1
  def update
    if @image_detection.update(send_result_params)
      render json: {url: @image_detection.url, result: @image_detection.result, id: @image_detection.id}
    else
      render json: @image_detection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /image_detections/1
  def destroy
    @image_detection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_detection
      @image_detection = ImageDetection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_detection_params
      params.require(:image_detection).permit(:url, :result)
    end

    def send_url_params
      params.permit(:url)
    end

    def send_result_params
      params.permit(:result)
    end
end
