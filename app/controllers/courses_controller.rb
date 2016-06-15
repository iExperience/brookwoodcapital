class CoursesController < ApplicationController
  def show
    course = params[:name]
    @course_data = CourseInfoService.get_info(course)
    raise "CourseNotFound" unless @course_data
    @fb_events.viewed_course(course)
    @course_view_name = course.gsub(/-/, '_')
    @ad = params[:a]
    if @ad 
      # Check that this ad matches the given course.
      if lookup_context.find_all("landing/ads/_#{@course_view_name}_#{@ad}_top").any?
        render "landing/#{@course_view_name}_landing"
      else
        # TODO(rafi): Send a Honeybadger notification
        #   or otherwise notify that a link is broken. 
        redirect_to course_path(course)
      end
      return
    end
    render @course_view_name
  end
end
