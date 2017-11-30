# frozen_string_literal: true

# defining CRUD actions in ProfilesController

class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  def show
    @profile = Profile.find(params[:id])

    render json: @profile
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def create
    @profile = Profile.new(profile_params)

    if @profile.save
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  def profile_params
    params.require(:profile).permit(:quote, :handle)
  end
end
