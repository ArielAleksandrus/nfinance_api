class HomeController < ApplicationController
  def index
    render json: {status: "Everything seems to work...", env: Rails.env}
  end
end
