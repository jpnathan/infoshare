class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@accomodations = Accommodation.all.order('created_at DESC')
		@jobs = Job.all.order('created_at DESC')
		@projects = Project.all.order('created_at DESC')
		@transports = Transport.all.order('created_at DESC')
	end
	def load
		Rails.application.eager_load!
	end
end
