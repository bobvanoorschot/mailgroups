# frozen_string_literal: true

class DashboardController < ApplicationController
  before_action :authenticate_user!

  before_action :load_lists, only: %i[index]

  # GET /kit/products or /kit/products.json
  def index
    @list = List.new
  end

  private

  def load_lists
    @q = List.select(:id, :name).order(:created_at).ransack(params[:q])
    @pagy, @lists = pagy(@q.result)
  end
end
