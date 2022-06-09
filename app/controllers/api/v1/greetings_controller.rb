module Api
  module V1
    class GreetingsController < ApplicationController
      before_action :set_greeting, only: %i[show update destroy]

      # GET /greetings
      def index
        @greetings = Greeting.all

        @random_greeting = @greetings[rand(@greetings.length)]

        render json: @random_greeting, only: [:message]
      end
    end
  end
end
