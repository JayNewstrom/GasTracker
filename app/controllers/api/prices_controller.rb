module Api
  class PricesController < ApplicationController
    def index

      price_table = Price.arel_table
      grade_table = Grade.arel_table
      prices = Price.select([price_table[:cost], grade_table[:name]]).joins(:grade)

      prices = prices.order(price_table[:created_at].desc)

      render_api_response prices
    end

    def create
      price = Price.new(params[:price])
      success = price.save

      render_api_response price, success, price.errors.full_messages
    end
  end
end
