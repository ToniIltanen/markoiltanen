class HomeController < ApplicationController
  include HomeHelper
  def main
    @events = Event.where('date >= ?', DateTime.now).order(date: :asc, time: :asc).take(5)
  end
end
