class Message < ActiveRecord::Base
	Pusher.app_id = '24399'
	Pusher.key = '5b6881d2b9fa5258b091'
	Pusher.secret = '87c7830e7724b588e1f5'

after_create :send_to_pusher

	def send_to_pusher
		logger.info "Hi?"
		Pusher['DEWchat'].trigger("message:create",self.to_json)
	end	

end
