class Clubs::BooksController < ApplicationController
  def index
    club = Club.includes(:books, :meetings, :memberships).find(params[:club_id])
    @books = club.books
  end
end
