class User < ApplicationRecord
	before_create :create_remember_token
	has_many :created_events, foreign_key: :creater_id, class_name: "Event"
	has_many :attendance, foreign_key: :attendee_id
	has_many :attended_events, :through => :attendance, :source => :attended_event

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	def upcoming_events
		self.attended_events.select { |event| event.date.to_i > Time.zone.now.to_i}
	end

	def previous_events
		self.attended_events.select { |event| event.date.to_i < Time.zone.now.to_i}
	end

	private

		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end

end

