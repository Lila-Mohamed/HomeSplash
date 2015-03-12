class HomeController < ApplicationController
  def index

    @current_time = Time.now.stamp_like("Feb 1st 09:00pm")
    @greet_message = case Time.now.hour
    when 5..11
      "Good Morning"
    when 12..15
      "Good Afternoon, SUCKA"
    when 16..19
      ["Buenas Afternoon", "afternoon!"].sample
    when 20..23, 0..4
      "Good Night! <i class='fa fa-moon-o'></i>".html_safe
    end

  end
end
