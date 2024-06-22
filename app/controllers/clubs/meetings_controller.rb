class Clubs::MeetingsController < ApplicationController
  before_action :set_club
  before_action :set_meeting, only: [ :show ]
  def index
  end

  def show
  end

  private

  def set_club
    @club = Club.find(params[:club_id])
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end
end
