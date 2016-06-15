class HomeController < ApplicationController
  def index
    @ad = params[:a]
    if @ad 
      @course_data.merge!({
        optin_code: "gcoo1osgmuw3qtqg", # General infopack
        optin_number: "14555.282035"
      })
      render "landing/index_landing" and return
    end
  end

	def alumni
		# @alumni_data is Hash<symbol, <Hash<string, number> >
		# For each type (college, year, course), it associates a hash
		# that maps the name to the count.
		@alumni_data = {
			colleges: {},
			courses: {}
		}
		@alumni = Alumnus.all
		@alumni.each do |a|
    	@alumni_data[:colleges][a.college] ||= 0
    	@alumni_data[:colleges][a.college] += 1
    	@alumni_data[:courses][a.course] ||= 0
    	@alumni_data[:courses][a.course] += 1
    end
    @alumni = @alumni.shuffle # Randomize order each time
	end
end
