module ClubsHelper
  def time_since(start_date, end_date = Time.now)
    distance_of_time_in_words(start_date, end_date)
  end
end
