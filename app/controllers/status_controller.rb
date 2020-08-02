class StatusController < ApplicationController
  def show
    render json: {status: 200, message: 'OK'}
  end
end
