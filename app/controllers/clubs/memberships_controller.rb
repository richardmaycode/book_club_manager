class Clubs::MembershipsController < ApplicationController
  def index
    @memberships = Membership.where(club_id: params[:club_id])
  end
end
