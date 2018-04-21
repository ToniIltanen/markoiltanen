class HomeController < ApplicationController
  include HomeHelper
  def main
    @events = Event.all.order(date: :asc, time: :asc).take(5)
  end

end
