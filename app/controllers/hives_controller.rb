# frozen_string_literal: true

# Ressource controller for the Hive model.
class HivesController < ApplicationController
  def index
    @hives = Hive.all
  end

  def show
    @hive = Hive.find(params[:id])
  end

  def create
    @hive = Hive.new(hive_params)

    if @hive.save
      render :show
    else
      render json: @hive.errors, status: :unprocessable_entity
    end
  end

  private

  def hive_params = params.require(:hive).permit(:name, :description, :weight)
end
