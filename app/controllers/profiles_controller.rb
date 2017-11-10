class ProfilesController < ApplicationController

	def show
		@profile = Profile.find(params[:id])
    end

    def index
    end
    
    def edit
    end

    def new
    end

    def create
    end

	def toggle_status
		if @profile.alumni
			@profile.student
		elsif @profile.student
			@profile.alumni
		end
	end

	def toggle_activity
		if @profile.active
			@profile.not_active
		elsif @profile.not_active
			@profile.active
		end
	end

	def toggle_work
		if @profile.full_time
			@profile.contract

		elsif @profile.contract
			@profile.part_time

		elsif @profile.part_time
			@profile.full_time
		end
	end

end
