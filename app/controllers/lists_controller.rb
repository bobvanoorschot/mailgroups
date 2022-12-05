class ListsController < ApplicationController
  before_action :authenticate_user!

  before_action :load_lists, only: %i[index]

  # GET /lists or /lists.json
  def index
    @list = List.new
  end

  # GET /kit/products/1 or /kit/products/1.json
  def show
    respond_to do |format|
      format.html { render(turbo_frame_request? ? :show : :index) }
      format.json { render(:show) }
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def load_lists
    @q = List.select(:id, :name).order(:created_at).ransack(params[:q])
    @pagy, @lists = pagy(@q.result)
  end
end
