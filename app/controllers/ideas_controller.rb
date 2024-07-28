class IdeasController < ApplicationController
  def home
  end

  def index
    @location = params[:location]
    @responses = []
    @today = Date.today

    if @location.present?
      client = OpenAI::Client.new
      response = client.chat(parameters: {
        model: "gpt-3.5-turbo",
        messages: [{ role: "user", content: "Create a code aarray with 10 things to do #{@today} in #{@location} without a name. Check things todo today. Don't duplicate things. Elaborate on the things todo. Show only the code. No extra code, just the array. no const thingsToDo var names. Make it compatible with"}]
      })
      if response["choices"] && response["choices"][0] && response["choices"][0]["message"]
        @responses = response["choices"][0]["message"]["content"].split("\n").map(&:strip).reject(&:empty?)
      else
        @responses << "No responses received from GPT-4."
      end
    end
  end

  def new
  end

  def create
  end
end
