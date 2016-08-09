class AdminsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
    @memorial = Memorial.friendly.find(params[:id])
  end

  def create
  end
end
