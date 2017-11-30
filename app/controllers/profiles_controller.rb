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
end
