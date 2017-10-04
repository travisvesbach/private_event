class Event < ApplicationRecord
	belongs_to :creater, :class_name => "User"
	has_many :attendance, foreign_key: :attended_event_id
	has_many :attendees, :through => :attendance, :source => :attendee
	scope :past_events, -> { where("date < ?", Time.zone.now) }
	scope :upcoming_events, -> { where("date > ?", Time.zone.now) }


# 	Commented out because scope is being used instead.
#	def self.past_events
#		self.all.select { |event| event.date.to_i < Time.zone.now.to_i}
#	end

#	def self.upcoming_events
#		self.all.select { |event| event.date.to_i > Time.zone.now.to_i}
#	end
end
