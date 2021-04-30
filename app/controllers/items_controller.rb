class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.to_json(except: [:created_at, :updated_at], include: {category: })
  end
end
