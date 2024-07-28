class IdeasController < ApplicationController
  def home
  end

  def index
    @location = params[:location]
    @responses = {}
    @today = Date.today

    if @location.present?
      client = OpenAI::Client.new(api_key: ENV['OPENAI_API_KEY'])
      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          response_format: { type: "json_object" },
          messages: [{ role: "user", content: "Give me some JSON please. 10 things to do on #{@today} in #{@location}. Check things to do today. Don't duplicate things. Elaborate on the things to do." }],
          temperature: 0.7,
        }
      )
      # puts JSON.pretty_generate(response)
      # @responses = JSON.pretty_generate(response)
      puts response.dig("choices", 0, "message", "content")
    end
  end
  def new
  end

  def create
  end
end
