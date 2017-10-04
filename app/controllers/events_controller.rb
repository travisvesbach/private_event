class EventsController < ApplicationController

	def new
	end

	def create
		@user = current_user
		@event = @user.created_events.build(event_params)
		@event.save
		@event.attendance.create(attendee_id: @user.id)
		redirect_to @user
	end

	def show
		@event = Event.find_by(id: params[:id])
	end

	def index
		@events = Event.all
		@past_events = Event.past_events
		@upcoming_events = Event.upcoming_events
	end

	private

		def event_params
			params.require(:event).permit(:name, :date, :place, :description)
		end

end
