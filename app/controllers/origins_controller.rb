class OriginsController < ApplicationController
  def index
    origins = Origin.all
    render json: OriginSerializer.new(origins, include: [:cars])
  end
end
