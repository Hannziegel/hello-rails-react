class GreetingsController < ApplicationController
  # GET /greetings
  # GET /greetings.json
  def index
    @greetings = Greeting.order('RANDOM()')
    render json: @greetings
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def greeting_params
      params.require(:greeting).permit(:message)
    end
end
