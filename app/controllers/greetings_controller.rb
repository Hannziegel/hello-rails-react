class GreetingsController < ApplicationController
  before_action :set_greeting, only: %i[ show update destroy ]

  # GET /greetings
  # GET /greetings.json
  def index
    @greetings = Greeting.all
  end

  # GET /greetings/1
  # GET /greetings/1.json
  def show
  end

  # POST /greetings
  # POST /greetings.json
  def create
    @greeting = Greeting.new(greeting_params)

    if @greeting.save
      render :show, status: :created, location: @greeting
    else
      render json: @greeting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /greetings/1
  # PATCH/PUT /greetings/1.json
  def update
    if @greeting.update(greeting_params)
      render :show, status: :ok, location: @greeting
    else
      render json: @greeting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /greetings/1
  # DELETE /greetings/1.json
  def destroy
    @greeting.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greeting
      @greeting = Greeting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def greeting_params
      params.require(:greeting).permit(:message)
    end
end
