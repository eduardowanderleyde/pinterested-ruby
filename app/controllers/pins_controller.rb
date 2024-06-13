class PinsController < ApplicationController
  before_action :set_pin, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  before_action :correct_user, only: %i[edit update destroy]

  # GET /pins or /pins.json
  def index
    @pins = Pin.all
  end

  # GET /pins/1 or /pins/1.json
  def show
  end

  # GET /pins/new
  def new
    @pin = current_user.pins.build
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins or /pins.json
  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pins/1 or /pins/1.json
  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pins/1 or /pins/1.json
  def destroy
    @pin.destroy
    redirect_to pins_url, notice: 'Pin was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pin
    @pin = Pin.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pin_params
    params.require(:pin).permit(:description, :image)
  end

  def correct_user
    @pin = current_user.pins.find_by(id: params[:id])
    redirect_to pins_path, notice: 'Not authorized to edit this pin' if @pin.nil?
  end
end
