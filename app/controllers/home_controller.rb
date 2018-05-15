class HomeController < ApplicationController
  include HomeHelper
  def main
    @events = Event.where('date >= ?', DateTime.now).order(date: :asc, time: :asc).take(5)
    @testimonials = Testimonial.all
    @news = Event.order(date: :asc, time: :asc).take(3)
    @locations = Location.all.distinct
  end
end
