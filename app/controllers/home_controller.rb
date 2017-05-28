class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@accomodations = Accommodation.all
		@jobs = Job.all
		@projects = Project.all
		@transports = Transport.all
	end

end
