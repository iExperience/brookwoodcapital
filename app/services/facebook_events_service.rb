class FacebookEventsService

  def initialize
    @events = []
  end
  
  def viewed_course(course)
    events << event_string("CourseViewed", { course: course })
  end

  def render_events
    return unless events
    events.inject(&:+).try(:html_safe)
  end

  attr_reader :events

  private

  def event_string(event, data={})
    data_string = data.map{ |k,v| "#{k}: '#{v}'" }.join(",") 
    "fbq('track', '#{event}', {#{data_string}});"
  end
end