class NewsController < ApplicationController
  def index
    request = HTTP.get("https://newsapi.org/v2/everything?q=cryptocurrency&language=en&pageSize=5&sortBy=relevancy&apiKey=#{ENV['news_api_key']}")
    request = request.parse(:json)
    render json: request
  end
end
# simple news api