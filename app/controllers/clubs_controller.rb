class ClubsController < ApplicationController
  before_action :set_club, only: %w[ show edit update delete ]
  def index
  end

  def show; end

  def new
  end

  def create
  end

  def edit; end

  def update
  end

  def delete
  end

  private

  def set_club
    @club = Club.includes(:meetings, :memberships, :users, :books).find(params[:id])
  end
end
