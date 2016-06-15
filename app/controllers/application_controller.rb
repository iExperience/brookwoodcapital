class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :setup_facebook_events
  before_action :set_default_course_data

  def setup_facebook_events
    @fb_events = FacebookEventsService.new
  end

  # NOTE(rafi): Serves any page using @course_data (which is not just the
  # courses_controller).
  def set_default_course_data
    @course_data = CourseInfoService.get_default_info
  end
end
